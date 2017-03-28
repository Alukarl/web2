class CreateContainerts < ActiveRecord::Migration[5.0]
  def change
    create_table :containerts do |t|
      t.float :depreciation
      t.float :m_area

      t.timestamps
    end
  end
end
