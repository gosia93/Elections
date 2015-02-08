class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates_presence_of :name
  before_save :assign_role
  def assign_role



     self.role = Role.find_by name: "Zwykły" if self.role.nil?
  end
  def admin?
    self.role.name == "Admin"
  end
  def regular?
    self.role.name == "Zwykły"
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
end
