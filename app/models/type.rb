class Type < ActiveRecord::Base
  attr_accessible :name
  belongs_to :product
end
