class Item < ActiveRecord::Base
  belongs_to :list
  attr_accessible :order, :text, :list_id
end
