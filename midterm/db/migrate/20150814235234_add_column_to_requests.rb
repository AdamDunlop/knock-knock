class AddColumnToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :message, :text
  end
end
