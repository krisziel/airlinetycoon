class ActualFare < ActiveRecord::Base
	require 'csv'
	def self.as_csv
	  CSV.generate do |csv|
	    csv << column_names
	    all.each do |item|
	      csv << item.attributes.values_at(*column_names)
	    end
	  end
	end
end
