class Bowtie < ActiveRecord::Base
	validates :pattern,  presence: true
end
