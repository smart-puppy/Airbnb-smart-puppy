class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.integer :price
      t.string :description
      t.string :colour
      t.boolean :electric
      t.integer :speed
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
