class CreateSchoolAvailabilities < ActiveRecord::Migration
  def change
    create_table :school_availabilities do |t|
      t.string :day
      t.string :shift
      t.integer :school

      t.timestamps null: false
    end
  end
end
