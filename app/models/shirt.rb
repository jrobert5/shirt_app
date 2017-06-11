class Shirt < ApplicationRecord

  belongs_to :invoice
  belongs_to :fabric
  belongs_to :collar
  belongs_to :cuff

end
