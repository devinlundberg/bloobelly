class ShoppingTrip < ActiveRecord::Base
  belongs_to :user
  has_many :food_items
end
