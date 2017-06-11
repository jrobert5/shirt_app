class Fabric < ApplicationRecord

  has_many :shirts
  has_many :fabric_colors, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  
end
