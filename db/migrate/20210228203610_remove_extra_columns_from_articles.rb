class RemoveExtraColumnsFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :thumbnail
    remove_column :articles, :r
    remove_column :articles, :viewcount
  end
end
