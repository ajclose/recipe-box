class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :cook_time, null: false

      t.timestamps
    end
  end
end
