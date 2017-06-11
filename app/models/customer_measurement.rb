class CustomerMeasurement < ApplicationRecord

belongs_to :customer
validates :neck, :numericality => { :less_than_or_equal_to => 60, :greater_than_or_equal_to => 25 }
validates :chest, :numericality => { :less_than_or_equal_to => 150, :greater_than_or_equal_to => 70 }
validates :stomach, :numericality => { :less_than_or_equal_to => 180, :greater_than_or_equal_to => 60 }
validates :seat, :numericality => { :less_than_or_equal_to => 130, :greater_than_or_equal_to => 80 }

validates :customer_id, :presence => true


end
