class CreateIceCreams < ActiveRecord::Migration[5.2]
    def change
      create_table :ice_creams do |t|
        t.string :flavor 
      end
    end
  end