class Result < ActiveRecord::Base
   validates :committee, presence: true
   validates :constituency, presence: true
   validates :amount, presence: true

   def sum
   @suma = Result.all(:select => "committee_id, SUM(amount) as wynik",
                      :group => "committee_id")
   end

   belongs_to :committee
   belongs_to :constituency

end
