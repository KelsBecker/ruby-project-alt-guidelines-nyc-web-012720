class CreateSundaeToppings < ActiveRecord::Migration[5.2]
    def change
      create_table :sundae_toppings do |t|
        t.integer :topping_id
        t.integer :sundae_id
      end
    end
 end