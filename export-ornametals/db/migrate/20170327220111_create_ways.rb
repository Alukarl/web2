class CreateWays < ActiveRecord::Migration[5.0]
  def change
    create_table :ways do |t|
      t.float :distance
      t.float :stopes

      t.timestamps
    end
  end
end
