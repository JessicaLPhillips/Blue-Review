class CreatePostAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :post_authors do |t|
      t.integer :post_id
      t.integer :author_id

      t.timestamps
    end
  end
end
