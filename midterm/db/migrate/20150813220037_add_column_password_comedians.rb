class AddColumnPasswordComedians < ActiveRecord::Migration
  def change
     add_column :comedians, :password, :string
  end
end
