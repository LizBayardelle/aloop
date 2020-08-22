json.extract! resource, :id, :title, :description, :subcategory, :active, :classification, :user_id, :created_at, :updated_at
json.url resource_url(resource, format: :json)
