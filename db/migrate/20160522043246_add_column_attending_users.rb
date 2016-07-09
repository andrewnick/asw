class AddColumnAttendingUsers < ActiveRecord::Migration
  def change
  	add_column :users, :attending, :integer
  end
end
