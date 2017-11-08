class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :background
      t.string :race
      t.string :classes

      t.timestamps
    end
  end
end
