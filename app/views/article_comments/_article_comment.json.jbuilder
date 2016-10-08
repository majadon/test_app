json.extract! article_comment, :id, :content, :user_id, :article_id, :created_at, :updated_at
json.url article_comment_url(article_comment, format: :json)