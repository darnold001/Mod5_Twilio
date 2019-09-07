json.extract! request_notifier, :id, :todo_name, :urgency, :description, :photo, :created_at, :updated_at
json.url request_notifier_url(request_notifier, format: :json)
