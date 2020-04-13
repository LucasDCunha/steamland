class CreateOwns < ActiveRecord::Migration[5.2]
  def change
    create_table :owns do |t|
      t.references :Game
      t.references :User

      t.timestamps
    end
  end
end
