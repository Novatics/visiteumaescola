class AddUserIdToSchoolProfile < ActiveRecord::Migration
  def change
    add_reference :school_profiles, :user, index: true, foreign_key: true
  end
end
