json.extract! subscriber, :id, :first_name, :email, :customer, :unsubscribed, :resource_id_array, :created_at, :updated_at
json.url subscriber_url(subscriber, format: :json)
