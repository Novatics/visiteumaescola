class School < ActiveRecord::Base
  attr_protected
  # attr_accessible :name, :email, :abbreviation, :phone, :state, :city, :neighbourhood, :address, :number,
  #                 :profile_nursery, :profile_daycare, :profile_kindergarten, :profile_elementary,
  #                 :profile_college, :profile_technician, :profile_language, :profile_sport,
  #                 :profile_art, :profile_kid, :profile_teenager, :profile_adult, :profile_elderly,
  #                 :profile_deaf, :profile_disable, :profile_physical_disable, :profile_blind,
  #                 :profile_teacher, :profile_employee, :profile_family, :profile_baby, :contact_name,
  #                 :contact_email, :contact_phone, :contact_position, :contact_name_responsible,
  #                 :contact_email_responsible, :contact_position_responsible, :contact_phone_responsible,
  #                 :need_sport, :need_culture, :need_monitoring, :need_repairs, :need_courses, :need_health,
  #                 :need_psycho, :need_donations, :need_others
  validates :name, :email, presence: true
end
