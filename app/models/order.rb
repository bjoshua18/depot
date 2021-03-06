require 'pago'

class Order < ApplicationRecord
	belongs_to :pay_type
	has_many :line_items, dependent: :destroy

	validates :name, :address, :email, presence: true
	validates :pay_type_id, inclusion: { in: PayType.all.select(:id).to_a.map {|i| i.id} }

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	def charge!(pay_type_params)
		payment_details = {}
		payment_method = nil

		case pay_type_id
		when 1
			payment_method = :check
			payment_details[:routing] = pay_type_params[:routing_number]
			payment_details[:account] = pay_type_params[:account_number]
		when 2
			payment_method = :credit_card
			month, year = pay_type_params[:expiration_date].split(//)
			payment_details[:cc_num] = pay_type_params[:credit_card_number]
			payment_details[:cc_num] = month
			payment_details[:cc_num] = year
		when 3
			payment_method = :po
			payment_details[:po_num] = pay_type_params[:po_number]			
		end

		payment_result = Pago.make_payment(
			order_id: id,
			payment_method: payment_method,
			payment_details: payment_details
		)

		if payment_result.succeeded?
			OrderMailer.received(self).deliver_later
		else
			raise payment_result.error
		end
	end

	def ship!
		OrderMailer.shipped(self).deliver_later
	end
end
