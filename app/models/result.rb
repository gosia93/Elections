class Result < ActiveRecord::Base
   validates :committee, presence: true
   validates :constituency, presence: true
   validates :amount, presence: true
   
   def sum 
     Result.sum("amount")
   end

   belongs_to :committee
   belongs_to :constituency

end
