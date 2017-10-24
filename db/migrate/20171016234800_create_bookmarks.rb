class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.integer :page_num
      t.text :description

      t.timestamps
    end
  end
end
