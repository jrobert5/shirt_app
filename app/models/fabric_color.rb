class FabricColor < ApplicationRecord
  belongs_to :fabric
  belongs_to :color
  validates :fabric_id, :uniqueness => { :scope => [:color_id] }
end
