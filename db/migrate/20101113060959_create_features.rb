class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string :title
      t.string :url
      t.text :entry
      t.string :category

      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
