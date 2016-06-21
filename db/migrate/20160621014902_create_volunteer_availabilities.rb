class CreateVolunteerAvailabilities < ActiveRecord::Migration
  def change
    create_table :volunteer_availabilities do |t|
      t.string :day
      t.string :shift
      t.integer :volunteer

      t.timestamps null: false
    end
  end
end
