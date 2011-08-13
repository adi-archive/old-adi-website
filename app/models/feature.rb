class Feature < ActiveRecord::Base
    has_attached_file :image, :styles => { :figure => "200x200>" }
end
