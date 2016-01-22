class CreateSchoolProfiles < ActiveRecord::Migration
  def change
    create_table :school_profiles do |t|
      t.string :address
      t.string :size

      t.timestamps null: false
    end
  end
end
