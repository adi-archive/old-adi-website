class Author < ActiveRecord::Base
  has_and_belongs_to_many :posts
  has_attached_file :avatar, :styles => { :thumb => "80x80>" }
end
