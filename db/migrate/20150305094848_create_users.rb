class CreateUsers < ActiveRecord::Migration
  def change
  	  create_table :users do |p|
      p.string :username
      p.string :password
      p.timestamps null: false
  end
end
end
