class VolunteerProfile < ActiveRecord::Base
  belongs_to :user
  serialize :skills
end
