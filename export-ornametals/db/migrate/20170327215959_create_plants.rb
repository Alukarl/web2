class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :variant
      t.float :temperature
      t.float :m_area

      t.timestamps
    end
  end
end
