class CreateFrames < ActiveRecord::Migration[7.0]
  def change
    create_table :frames do |t|
      t.string :name, null: false
      t.string :description, defalut: ""
      t.integer :status, null: false
      t.integer :stock, null: false
      t.decimal :price, precision: 12, scale: 6, null: false
      t.belongs_to :currencies, foreign_key: true

      t.timestamps
    end
  end
end
