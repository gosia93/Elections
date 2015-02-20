class Committee < ActiveRecord::Base
   validates :name, presence: true
   validates_uniqueness_of :name 
   has_attached_file :logo, styles: { :medium => "300x300>", :thumb => "100x100>" } 
   validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
   
   has_many :results, dependent: :destroy
end
