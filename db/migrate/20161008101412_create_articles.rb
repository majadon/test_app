class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.references :user, index: true

      t.timestamps
    end
  end
end
