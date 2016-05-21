class ChangeUsernameToFamilyname < ActiveRecord::Migration
  def change
  	rename_column :users, :username, :family_name
  end
end
