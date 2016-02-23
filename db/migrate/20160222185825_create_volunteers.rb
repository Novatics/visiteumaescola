class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string  :name
      t.string  :email
      t.string  :phone
      t.string  :skills

      t.timestamps null: false
    end
  end
end
