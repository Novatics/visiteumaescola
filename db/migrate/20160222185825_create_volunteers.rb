class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string  :name, null: false
      t.string  :email, null: false
      t.string  :cellphone, null: false
      t.string  :phone
      t.string  :state
      t.string  :city, null: false
      t.string  :neighbourhood
      t.string  :address
      t.string  :number
      t.string  :zipcode, null: false
      t.boolean :skill_sport, default: false
      t.boolean :skill_culture, default: false
      t.boolean :skill_monitoring, default: false
      t.boolean :skill_repairs, default: false
      t.boolean :skill_courses, default: false
      t.boolean :skill_health, default: false
      t.boolean :skill_psycho, default: false
      t.boolean :skill_donations, default: false
      t.boolean :skill_others, default: false
      t.string  :skill_detail
      t.boolean :preference_kid, default: false
      t.boolean :preference_teenager, default: false
      t.boolean :preference_adult, default: false
      t.boolean :preference_elderly, default: false
      t.boolean :preference_deaf, default: false
      t.boolean :preference_blind, default: false
      t.boolean :preference_disable, default: false
      t.boolean :preference_physical_disable, default: false
      t.boolean :preference_teacher, default: false
      t.boolean :preference_employee, default: false
      t.boolean :preference_family, default: false
      t.boolean :preference_baby, default: false
      t.integer :points
      t.timestamps null: false
    end
  end
end
