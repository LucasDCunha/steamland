class CreateCategoties < ActiveRecord::Migration[5.2]
  def change
    create_table :categoties do |t|
      t.string :name

      t.timestamps
    end
  end
end
