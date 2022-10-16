json.extract! order, :id, :quantity, :status, :item_id, :client_id, :created_at, :updated_at
json.url order_url(order, format: :json)
