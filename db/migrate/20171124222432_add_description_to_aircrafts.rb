class AddDescriptionToAircrafts < ActiveRecord::Migration
  def change
  	add_column :aircrafts, :description, :text
  	add_column :aircrafts, :created_at, :datetime
  	add_column :aircrafts, :updated_at, :datetime
  end
end
