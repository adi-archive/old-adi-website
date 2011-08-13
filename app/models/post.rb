class Post < ActiveRecord::Base
  has_and_belongs_to_many :authors

  cattr_reader :per_page
  @@per_page = 10
end
