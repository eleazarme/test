class CreateAdminOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_orders do |t|
      t.date :date
      t.decimal :subtotal
      t.decimal :taxes
      t.decimal :total

      t.timestamps
    end
  end
end
