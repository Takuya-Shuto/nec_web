json.extract! event, :id, :name, :massage, :start_time, :end_time, :created_at, :updated_at
json.url event_url(event, format: :json)
