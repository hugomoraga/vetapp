class CreatePethistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pethistories do |t|
      t.integer :weight
      t.integer :height
      t.string :description
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
