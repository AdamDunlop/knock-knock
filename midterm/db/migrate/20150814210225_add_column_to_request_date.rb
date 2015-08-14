class AddColumnToRequestDate < ActiveRecord::Migration
  def change
  	 add_column :requests, :date, :datetime
  end
end
