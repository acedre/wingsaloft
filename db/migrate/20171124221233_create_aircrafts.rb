class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
    	t.string :aircraft_type
    end
  end
end
