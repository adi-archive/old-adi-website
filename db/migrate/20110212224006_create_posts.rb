class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :entry
      t.text :teaser
      t.datetime :post_date

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
