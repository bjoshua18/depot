json.(@product, :title)
json.updated @latest_order.try(:updated_at)

json.orders do
	json.array! @product.orders.each do |order|
		json.id order.id
		json.address order.address
		json.total order.line_items.map(&:total_price).sum
		json.pay_type PayType.find(order.pay_type_id).name
		
		json.line_items do
			json.array! order.line_items.each do |item|
				json.product_name item.product.title
				json.quantity item.quantity
				json.total_price item.total_price
			end
		end

		json.author do
			json.name order.name
			json.email order.email
		end
	end
end