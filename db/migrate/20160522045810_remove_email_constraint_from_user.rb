class RemoveEmailConstraintFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :email, null: true
  end
end
