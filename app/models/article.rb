class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_comments
end
