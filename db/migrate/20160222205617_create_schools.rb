class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string  :name, null: false
      t.string  :email, null: false
      t.string  :abbreviation
      t.string  :phone, null: false
      t.string  :state, null: false
      t.string  :city, null: false
      t.string  :neighbourhood, null: false
      t.string  :address, null: false
      t.string  :number, null: false
      t.string  :zipcode, null: false
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
      t.boolean  :need_sport, default: false
      t.boolean  :need_culture, default: false
      t.boolean  :need_monitoring, default: false
      t.boolean  :need_repairs, default: false
      t.boolean  :need_courses, default: false
      t.boolean  :need_health, default: false
      t.boolean  :need_psycho, default: false
      t.boolean  :need_donations, default: false
      t.boolean  :need_others, default: false
      t.string  :need_detail

      t.timestamps null: false
    end
  end
end
