class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :item
      t.references :user, index: true, foreign_key: true
      t.boolean :chosen

      t.timestamps null: false
    end
  end
end
