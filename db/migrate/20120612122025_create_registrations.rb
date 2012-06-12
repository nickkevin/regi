class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :Name
      t.string :User_Name
      t.string :Password
      t.string :Confirm_Password
      t.string :Email_ID
      t.string :I_Want_to_be_a

      t.timestamps
    end
  end
end
