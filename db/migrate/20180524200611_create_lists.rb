class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :what
      t.string :when
      t.string :where

      t.timestamps
    end
  end
end
