json.extract! admin_order, :id, :date, :subtotal, :taxes, :total, :created_at, :updated_at
json.url admin_order_url(admin_order, format: :json)
