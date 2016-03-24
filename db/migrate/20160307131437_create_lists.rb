class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :description
      t.integer :visibility
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
