class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :base_experience
      t.integer :height
      t.boolean :is_default
      t.integer :order
      t.integer :weight
      t.string :location_area_encounters

      t.timestamps
    end
  end
end
