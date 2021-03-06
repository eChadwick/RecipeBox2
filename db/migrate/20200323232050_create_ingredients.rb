class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name

      t.timestamps
    end
    add_index(:ingredients, :name, unique: true)
    change_column_null(:ingredients, :name, false)
  end
end
