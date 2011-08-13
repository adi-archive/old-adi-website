class AddAuthorsPostsTable < ActiveRecord::Migration
  def self.up
    create_table :authors_posts, :id => false do |t|
      t.integer :author_id
      t.integer :post_id
    end
    add_index :authors_posts, [ :author_id, :post_id ], :unique => true
  end

  def self.down
    drop_table :authors_posts
  end
end
