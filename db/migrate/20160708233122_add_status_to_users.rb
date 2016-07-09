class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status, :integer, default: 0
    remove_column :users, :attending, :boolean
  end
end
