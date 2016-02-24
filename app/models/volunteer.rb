class Volunteer < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :skills
  serialize :skills

  validates :name, :email, presence: true
end
