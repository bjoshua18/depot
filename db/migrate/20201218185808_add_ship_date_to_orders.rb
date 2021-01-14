class AddShipDateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :ship_date, :datetime, nullable: true
  end
end
