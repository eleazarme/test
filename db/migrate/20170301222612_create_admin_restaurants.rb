class CreateAdminRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_restaurants do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :logo

      t.timestamps
    end
  end
end
