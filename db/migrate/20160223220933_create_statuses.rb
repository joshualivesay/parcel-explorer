class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :state
      t.integer :records

      t.timestamps null: false
    end
  end
end
