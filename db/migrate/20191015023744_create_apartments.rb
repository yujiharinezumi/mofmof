class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|

      t.string :name
      t.string :price
      t.string :address
      t.string :year
      t.text :note

      t.timestamps
    end
  end
end
