json.extract! device, :id, :name, :owner, :is_active, :created_at, :updated_at
json.url device_url(device, format: :json)
