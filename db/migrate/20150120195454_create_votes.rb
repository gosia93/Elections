class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :committee
      t.integer :constituency
      t.integer :amount

      t.timestamps null: false
    end
  end
end
