class Committee < ActiveRecord::Base
   validates :name, presence: true
  # has_and_belongs_to_many :constituency
  has_many :vote
end
