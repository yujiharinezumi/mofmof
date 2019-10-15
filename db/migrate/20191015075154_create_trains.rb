class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.string :line
      t.string :station
      t.string :distance

      t.timestamps
    end
  end
end
