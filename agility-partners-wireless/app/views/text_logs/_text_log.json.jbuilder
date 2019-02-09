json.extract! text_log, :id, :to_id, :from_id, :sent, :message, :created_at, :updated_at
json.url text_log_url(text_log, format: :json)
