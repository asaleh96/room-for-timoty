class AddMessageToViewings < ActiveRecord::Migration[7.0]
  def change
    add_column :viewings, :message, :text
  end
end
