class Committee < ActiveRecord::Base
   validates :name, presence: true
  
  has_many :results
end
