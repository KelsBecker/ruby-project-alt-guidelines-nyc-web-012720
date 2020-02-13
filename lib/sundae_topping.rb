class SundaeTopping < ActiveRecord::Base 
    belongs_to :sundae
    belongs_to :topping
end