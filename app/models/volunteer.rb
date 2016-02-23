class Volunteer < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :skills

  validates :name, :email, presence: true
end
