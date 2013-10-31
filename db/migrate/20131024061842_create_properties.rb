class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :number
      t.string :unit
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :rooms
      t.string :bathrooms
      t.string :sqft
      t.string :lot
      t.string :description
      t.string :price
      t.string :banner

      t.timestamps
    end
  end
end
