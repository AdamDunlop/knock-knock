class AddRequestsTable < ActiveRecord::Migration
  def change
  	 create_table :requests do |t|
      t.integer :venue_id
      t.integer :comedian_id
      t.timestamps 
  	end
  end
end
