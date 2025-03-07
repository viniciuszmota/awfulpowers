class CreatePowers < ActiveRecord::Migration[7.1]
  def change
    create_table :powers do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
