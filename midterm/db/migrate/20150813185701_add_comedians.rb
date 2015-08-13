class AddComedians < ActiveRecord::Migration
  def change
    create_table :comedians do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture_url
      t.text :description
      t.timestamps 
    end
  end
end
