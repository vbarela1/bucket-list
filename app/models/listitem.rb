class Listitem < ApplicationRecord
  validates_presence_of :title, :description, :complete
  
  belongs_to :bucketlist
  has_many :listitems

end

