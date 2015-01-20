class Vote < ActiveRecord::Base
   validates :committee, presence: true
   validates :constituency, presence: true
   validates :amount, presence: true

   belongs_to :committee
   belongs_to :constituency
end
