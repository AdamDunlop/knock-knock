class AddColumnToVenuePicutre < ActiveRecord::Migration
  def change

     add_column :venues, :picture_url, :string

  end
end
