class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :occupation, :string
    add_column :users, :city, :string
  end
end
