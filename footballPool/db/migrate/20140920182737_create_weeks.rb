class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :number
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
