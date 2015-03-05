class CreateGuesses < ActiveRecord::Migration
  def change
  	  create_table :guesses do |p|
      p.integer :card_id
      p.integer :round_id
      p.boolean :correct
      p.timestamps null: false
  end
end
end
