class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string  :name
      t.string  :email
      t.string  :abbreviation
      t.string  :phone
      t.string  :state
      t.string  :city
      t.string  :neighbourhood
      t.string  :address
      t.string  :number
      t.boolean :profile_nursery
      t.boolean :profile_daycare
      t.boolean :profile_kindergarten
      t.boolean :profile_elementary
      t.boolean :profile_college
      t.boolean :profile_technician
      t.boolean :profile_language
      t.boolean :profile_sport
      t.boolean :profile_art
      t.boolean :profile_kid
      t.boolean :profile_teenager
      t.boolean :profile_adult
      t.boolean :profile_elderly
      t.boolean :profile_deaf
      t.boolean :profile_disable
      t.boolean :profile_physical_disable
      t.boolean :profile_blind
      t.boolean :profile_teacher
      t.boolean :profile_employee
      t.boolean :profile_family
      t.boolean :profile_baby
      t.string  :contact_name
      t.string  :contact_email
      t.string  :contact_phone
      t.string  :contact_position
      t.string  :contact_name_responsible
      t.string  :contact_email_responsible
      t.string  :contact_position_responsible
      t.string  :contact_phone_responsible
      t.string  :need_sport
      t.string  :need_culture
      t.string  :need_monitoring
      t.string  :need_repairs
      t.string  :need_courses
      t.string  :need_health
      t.string  :need_psycho
      t.string  :need_donations
      t.string  :need_others

      t.timestamps null: false
    end
  end
end
