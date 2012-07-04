class List < ActiveRecord::Base
  has_many :items, order: :order
  attr_accessible :name
end
