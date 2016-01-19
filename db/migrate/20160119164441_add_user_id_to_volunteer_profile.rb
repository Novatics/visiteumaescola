class AddUserIdToVolunteerProfile < ActiveRecord::Migration
  def change
    add_reference :volunteer_profiles, :user, index: true, foreign_key: true
  end
end
