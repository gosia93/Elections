class Result < ActiveRecord::Base
   validates :committee, presence: true
   validates :constituency, presence: true
   validates :amount, presence: true
   validates_numericality_of :amount, :greater_than_or_equal_to => 0   
   validates :committee, :constituency,  uniqueness: {scope: [:committee, :constituency] }

   belongs_to :committee
   belongs_to :constituency

end
