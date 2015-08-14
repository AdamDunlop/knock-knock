class AddColumsToVenue < ActiveRecord::Migration
   def change
     add_column :venues, :phone_number, :string
     add_column :venues, :email, :string
     add_column :venues, :password, :string
  end
end
