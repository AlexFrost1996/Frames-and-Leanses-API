class CreateCurrences < ActiveRecord::Migration[7.0]
  def change
    create_table :currences do |t|
      t.string :title, null: false, unique: true
      
      t.timestamps
    end
  end
end
