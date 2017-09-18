json.extract! event, :id, :name, :message, :start_time, :end_time, :created_at, :updated_at
json.url event_url(event, format: :json)
