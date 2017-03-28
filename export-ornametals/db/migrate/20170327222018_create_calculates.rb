class CreateCalculates < ActiveRecord::Migration[5.0]
  def change
    create_table :calculates do |t|
      t.float :number
      t.float :temp_carry
      t.float :cant_container
      t.references :Plant, foreign_key: true
      t.references :Containert, foreign_key: true
      t.references :Way, foreign_key: true

      t.timestamps
    end
  end
end
