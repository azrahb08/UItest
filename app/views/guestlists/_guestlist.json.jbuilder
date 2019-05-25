json.extract! guestlist, :id, :name, :response, :email, :event_id, :created_at, :updated_at
json.url guestlist_url(guestlist, format: :json)
