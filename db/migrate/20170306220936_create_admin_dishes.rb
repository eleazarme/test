class CreateAdminDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_dishes do |t|
      t.string :dishgroup
      t.string :name
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
