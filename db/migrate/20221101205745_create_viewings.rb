class CreateViewings < ActiveRecord::Migration[7.0]
  def change
    create_table :viewings do |t|
      t.datetime :date
      t.references :flat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
