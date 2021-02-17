class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :subreddit
      t.text :title
      t.string :url
      t.integer :viewcount
      t.string :thumbnail
      t.string :r

      t.timestamps
    end
  end
end
