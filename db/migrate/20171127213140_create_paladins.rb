class CreatePaladins < ActiveRecord::Migration[5.1]
  def change
    create_table :paladins do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :armorclass
      t.integer :gold

      t.timestamps
    end
  end
end
