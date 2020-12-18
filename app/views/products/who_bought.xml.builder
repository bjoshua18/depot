xml.instruct!
xml.product do
	xml.title @product.title
	xml.updated @latest_order.try(:updated_at)
	
	xml.orders do
		@product.orders.each do |order|
			xml.order do
				xml.id order.id
				xml.address order.address
				xml.total order.line_items.map(&:total_price).sum
				xml.pay_type PayType.find(order.pay_type_id).name

				xml.line_items do
					order.line_items.each do |item|
						xml.line_item do
							xml.product_name item.product.title
							xml.quantity item.quantity
							xml.total_price item.total_price
						end
					end
				end

				xml.author do
					xml.name order.name
					xml.email order.email
				end
			end
		end
	end
end