class Sundae < ActiveRecord::Base 
    has_many :sundae_toppings
    has_many :toppings, through: :sundae_toppings
    belongs_to :ice_cream
    belongs_to :user
end