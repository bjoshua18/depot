class CombineItemsInCart < ActiveRecord::Migration[6.0]
  def up
    # reemplaza multiples items para un solo product en un carrito con un solo item
    Cart.all.each do |cart|
      # cuenta el numero de cada product en el carrito
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
          # elimina items individuales
          cart.line_items.where(product_id: product_id).delete_all
          # reemplaza con un solo item
          item = cart.line_items.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    # separa items con quantity > 1 en multiples items
    LineItem.where('quantity>1').each do |line_item|
      # agrega items individuales
      line_item.quantity.times do
        LineItem.create(
          cart_id: line_item.cart_id,
          product_id: line_item.product_id,
          quantity: 1
        )
      end
      # elimina el item original
      line_item.destroy
    end
  end
end
