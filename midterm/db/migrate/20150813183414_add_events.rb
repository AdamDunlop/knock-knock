class AddEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.references :comedian
      t.references :venue
      t.datetime :date
      t.integer :ticket_price
      t.timestamps 
    end
  end
end
