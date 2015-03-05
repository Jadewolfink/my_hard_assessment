class CreateDecks < ActiveRecord::Migration
  def change
  	  create_table :decks do |p|
      p.string :title
      p.integer :user_id
      p.timestamps null: false
  end
end
end