class CreateArticleComments < ActiveRecord::Migration
  def change
    create_table :article_comments do |t|
      t.text :content
      t.references :user, index: true
      t.references :article, index: true

      t.timestamps
    end
  end
end
