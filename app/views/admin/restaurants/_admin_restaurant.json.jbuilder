json.extract! admin_restaurant, :id, :name, :description, :address, :phone, :logo, :created_at, :updated_at
json.url admin_restaurant_url(admin_restaurant, format: :json)
