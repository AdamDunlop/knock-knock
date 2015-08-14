class AddColumnComedians < ActiveRecord::Migration
  def change
    add_column :comedians, :email, :string
  end
end
