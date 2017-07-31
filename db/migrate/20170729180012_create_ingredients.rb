class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :recipe_id
      t.string :quantity
      t.string :unit

      t.timestamps
    end
  end
end
