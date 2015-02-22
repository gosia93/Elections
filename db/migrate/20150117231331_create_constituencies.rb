class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.integer :number
      t.string :name
      t.string :town
      t.integer :seats
      t.integer :electors
      t.timestamps null: false
    end
  end
end
