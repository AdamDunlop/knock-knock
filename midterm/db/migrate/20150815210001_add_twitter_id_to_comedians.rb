class AddTwitterIdToComedians < ActiveRecord::Migration
  def change
    add_column :comedians, :widget_id, :string
  end
end
