class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :cmmiettee_id
      t.integer :constituency_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
