class Registration < ActiveRecord::Base
  attr_accessible :Confirm_Password, :Email_ID, :I_Want_to_be_a, :Name, :Password, :User_Name
end
