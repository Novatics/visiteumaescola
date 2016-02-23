class School < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :needs

  validates :name, :email, presence: true
end
