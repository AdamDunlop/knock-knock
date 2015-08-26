class AddingJokesColumn < ActiveRecord::Migration
  def change
  	 add_column :comedians, :joke, :text
  end
end
