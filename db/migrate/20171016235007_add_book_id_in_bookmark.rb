class AddBookIdInBookmark < ActiveRecord::Migration[5.1]
  def change
    add_column :bookmarks, :book_id, :integer
    add_index :bookmarks, :book_id
  end
end
