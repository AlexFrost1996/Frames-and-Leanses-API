class CreateLenses < ActiveRecord::Migration[7.0]
  def change
    create_table :lenses do |t|
      t.string :colour, null: false
      t.string :description, defalut: ""
      t.integer :prescription_type, null: false
      t.integer :lens_type, null: false
      t.integer :stock, null: false
      t.decimal :price, precision: 12, scale: 6, null: false
      t.belongs_to :currences, foreign_key: true

      t.timestamps
    end
  end
end
