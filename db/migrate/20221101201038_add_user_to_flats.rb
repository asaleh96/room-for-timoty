class AddUserToFlats < ActiveRecord::Migration[7.0]
  def change
    add_reference :flats, :user, null: false, foreign_key: true
  end
end
