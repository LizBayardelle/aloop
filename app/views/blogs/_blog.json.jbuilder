json.extract! blog, :id, :title, :teaser, :body, :published, :published_at, :video_url, :user_id, :resource_id, :slug, :created_at, :updated_at
json.url blog_url(blog, format: :json)
