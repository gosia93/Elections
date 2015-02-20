class Result < ActiveRecord::Base
   validates :committee, presence: true
   validates :constituency, presence: true
   validates :amount, presence: true
   validates_numericality_of :amount, :greater_than => 0   

   belongs_to :committee
   belongs_to :constituency

end
