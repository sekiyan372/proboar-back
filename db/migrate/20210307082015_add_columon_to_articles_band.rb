class AddColumonToArticlesBand < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :band, :string
  end
end
