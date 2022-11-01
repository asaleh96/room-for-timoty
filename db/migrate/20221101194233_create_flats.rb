class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.timestamps
      t.date :available_from
      t.string :title
      t.string :address
      t.text :description
      t.string :picture
      t.integer :rent
    end
  end
end
