class CreateAdminItems < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_items do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
