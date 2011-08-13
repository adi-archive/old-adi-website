class Project < ActiveRecord::Base
  has_attached_file :thumbnail, :styles => { :thumb => "200x200>" }
end
