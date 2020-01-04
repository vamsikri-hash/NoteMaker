class Item < ApplicationRecord
  belongs_to :note


  #validations
  validates_presence_of :name
end
