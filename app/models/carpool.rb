class Carpool < ActiveRecord::Base
	belongs_to :user
	has_many :starttimes
	has_many :endtimes
	
	validates :description, :starttime, :endtime, presence: true

end
