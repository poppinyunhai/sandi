class Product < ActiveRecord::Base
  attr_accessible :content, :title, :type_id, :avatar, :contenta
  has_many :types
  has_attached_file :avatar
end
