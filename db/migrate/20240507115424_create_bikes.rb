class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.integer :price
      t.string :description
      t.string :colour
      t.boolean :electric
      t.integer :speed
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
