json.extract! article, :id, :title, :content, :published, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)