class Invoice < ApplicationRecord
has_many :payments, :dependent => :destroy
has_many :shirts, :dependent => :destroy
belongs_to :customer

validates :status, :presence => true
validates :customer_id, :presence => true

end
