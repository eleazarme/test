json.extract! admin_dish, :id, :dishgroup, :name, :description, :price, :created_at, :updated_at
json.url admin_dish_url(admin_dish, format: :json)
