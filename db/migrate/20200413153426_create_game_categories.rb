class CreateGameCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :game_categories do |t|
      t.references :Game
      t.references :Category

      t.timestamps
    end
  end
end
