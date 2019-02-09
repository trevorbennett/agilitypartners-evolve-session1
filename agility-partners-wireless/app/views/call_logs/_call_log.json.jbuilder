json.extract! call_log, :id, :to_id, :from_id, :start, :end, :created_at, :updated_at
json.url call_log_url(call_log, format: :json)
