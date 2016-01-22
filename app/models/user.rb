class User < ActiveRecord::Base
  belongs_to :role
  before_create :set_default_role
  # User relationship for profiles
  has_one :school_profile
  has_one :volunteer_profile
  # Enable nested attributes for profiles
  accepts_nested_attributes_for :school_profile
  accepts_nested_attributes_for :volunteer_profile

  private
  def set_default_role
    self.role ||= Role.find_by_name('volunteer')
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
