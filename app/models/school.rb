class School < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :needs
  serialize :needs

  validates :name, :email, presence: true
end
