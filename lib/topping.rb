class Topping < ActiveRecord::Base
    has_many :sundae_toppings
    has_many :sundaes, through: :sundae_toppings
end