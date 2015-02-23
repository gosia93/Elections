class Constituency < ActiveRecord::Base
   validates :name, presence: true
   validates :number, presence: true
   validates :town, presence: true 
   validates :seats, presence: true
   validates :electors, presence: true
   validates_format_of :town, :with => /\A\p{Lu}{1}\p{L}{2,}(\-{1}\p{Lu}{1}\p{L}{2,})*\z/,
     :message => "jest niepoprawna!"
   validates_numericality_of :number, :greater_than => 0
   validates_numericality_of :seats, :greater_than => 0
   validates_numericality_of :electors, :greater_than => 0
   validates_uniqueness_of :number
   validates_uniqueness_of :name
 
   has_many :results, dependent: :destroy
end
