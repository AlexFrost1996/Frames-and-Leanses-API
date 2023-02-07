class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies do |t|
      t.string :currency_name, null: false
      t.string :currency_code, null: false, unique: true

      t.timestamps
    end
  end
end
