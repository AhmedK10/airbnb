class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.integer :capacity
      t.string :address
      t.text :summary
      t.integer :price_per_night
      t.string :type
      t.references :user, foreign_key: true
      t.integer :number_of_rooms
      t.string :properties

      t.timestamps
    end
  end
end
