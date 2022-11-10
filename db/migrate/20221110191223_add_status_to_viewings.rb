class AddStatusToViewings < ActiveRecord::Migration[7.0]
  def change
    add_column :viewings, :status, :integer, default: 0, index: true
  end
end
