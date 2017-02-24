class Listitem < ApplicationRecord
  validates_presence_of :title, :description
    
  
  belongs_to :bucketlist
  has_many :listitems

end

