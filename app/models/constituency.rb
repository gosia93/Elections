class Constituency < ActiveRecord::Base
   validates :name, presence: true
   validates :number, presence: true
   validates :town, presence: true 
   validates :seats, presence: true
   validates :electors, presence: true

 # has_and_belongs_to_many :committee
end
