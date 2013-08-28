class Yuyue < ActiveRecord::Base
  attr_accessible :bei, :email, :name, :qq, :type_id, :phone
  validates_presence_of :name, :phone
end
