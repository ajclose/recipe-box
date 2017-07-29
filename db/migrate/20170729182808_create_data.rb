class CreateData < ActiveRecord::Migration[5.1]
  def change
    create_table :data do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true
      t.string :quantity
      t.string :unit

      t.timestamps
    end
  end
end
