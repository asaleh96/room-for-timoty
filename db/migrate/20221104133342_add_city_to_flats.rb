class AddCityToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :city, :string
  end
end
