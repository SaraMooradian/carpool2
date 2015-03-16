class Carpool < ActiveRecord::Base
	belongs_to :user
	#has_many :starttimes
	#has_many :endtimes
	#has_many :startdates
	has_many :enddates
	
	validates :description, :starttime, :endtime, :startdate, :enddate, presence: true

end
