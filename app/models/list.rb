class List < ActiveRecord::Base
  has_many :items, dependent: :destroy
  attr_accessible :name
end
