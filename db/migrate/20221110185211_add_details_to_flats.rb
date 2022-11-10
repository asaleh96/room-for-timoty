class AddDetailsToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :number_of_rooms, :integer
    add_column :flats, :interests, :text
    add_column :flats, :currency, :string
  end
end
