class AddPayTypeRefToOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :pay_type, :integer
    add_reference :orders, :pay_type, nullable: false, default: 2, foreign_key: true
  end
end
