class Banner < ActiveRecord::Base
  attr_accessible :image, :name, :order
  has_attached_file :image
end
