class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.integer :weekID
      t.integer :teamA
      t.integer :teamB

      t.timestamps
    end
  end
end
