class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :committee_id
      t.integer :constituency_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
