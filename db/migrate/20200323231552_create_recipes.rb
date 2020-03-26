class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.json :directions

      t.timestamps
    end
    add_index(:recipes, :name, unique: true)
    change_column_null(:recipes, :name, false)
  end
end
