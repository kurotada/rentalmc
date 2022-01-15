class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.integer :user_id
      t.string :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
