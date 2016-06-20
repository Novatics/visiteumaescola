class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string  :name
      t.string  :email
      t.string  :cellphone
      t.string  :phone
      t.string  :state
      t.string  :city
      t.string  :neighbourhood
      t.string  :address
      t.string  :number
      t.string  :skill_sport
      t.string  :skill_culture
      t.string  :skill_monitoring
      t.string  :skill_repairs
      t.string  :skill_courses
      t.string  :skill_health
      t.string  :skill_psycho
      t.string  :skill_donations
      t.string  :skill_others
      t.boolean :preference_kid
      t.boolean :preference_teenager
      t.boolean :preference_adult
      t.boolean :preference_elderly
      t.boolean :preference_deaf
      t.boolean :preference_blind
      t.boolean :preference_disable
      t.boolean :preference_physical_disable
      t.boolean :prefenrece_teacher
      t.boolean :preference_employee
      t.boolean :preference_family
      t.boolean :preference_baby
      t.timestamps null: false
    end
  end
end
