class CreateSchoolProfiles < ActiveRecord::Migration
  def change
    create_table :school_profiles do |t|

      t.timestamps null: false
    end
  end
end
