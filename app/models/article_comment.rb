class ArticleComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  acts_as_votable 
end
