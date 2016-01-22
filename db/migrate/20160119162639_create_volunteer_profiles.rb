class CreateVolunteerProfiles < ActiveRecord::Migration
  def change
    create_table :volunteer_profiles do |t|
      t.string :skills 

      t.timestamps null: false
    end
  end
end
