class Volunteer < ActiveRecord::Base
  attr_protected
  # attr_accessible :name, :email, :phone, :cellphone, :state, :city, :neighbourhood, :address,
  #                 :number, :skill_sport, :skill_culture, :skill_monitoring, :skill_repairs, :skill_courses,
  #                 :skill_health, :skill_psycho, :skill_donations, :skill_others, :preference_kid,
  #                 :preference_teenager, :preference_adult, :preference_elderly, :preference_deaf,
  #                 :preference_blind, :preference_disable, :preference_physical_disable, :preference_teacher,
  #                 :preference_employee, :preference_family, :preference_baby, :points
  validates :name, :email, presence: true
end
