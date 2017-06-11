class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :invoices
  has_many :customer_measurements, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  
end
