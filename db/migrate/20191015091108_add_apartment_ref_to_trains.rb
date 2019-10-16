class AddApartmentRefToTrains < ActiveRecord::Migration[5.0]
  def change
    add_reference :trains, :apartment, foreign_key: true
  end
end
