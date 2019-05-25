json.extract! event, :id, :name,:date_of_event,:location, :description,:location, :picture, :created_at, :updated_at
json.url event_url(event, format: :json)
