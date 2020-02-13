class CreateSundaes < ActiveRecord::Migration[5.2]
    def change
      create_table :sundaes do |t|
        t.integer :ice_cream_id
        t.integer :user_id 
      end
    end
  end