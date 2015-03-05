class CreateCards < ActiveRecord::Migration
  def change
  	  create_table :cards do |p|
      p.string :question
      p.string :answer
      p.integer :deck_id
      p.timestamps null: false
  end
end
end