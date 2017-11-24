class Aircraft < ActiveRecord::Base
	validates :aircraft_type, presence: true, length: {minimum:3, maximum:20}
	validates :description, presence: true, length: {minimum:3, maximum:100}
end