class CreateBands < ActiveRecord::Migration[7.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.jsonb :members
      t.string :albums
      t.string :country

      t.timestamps
    end
  end
end
