class CreateTestingLocalApps < ActiveRecord::Migration
  def change
    create_table :testing_local_apps do |t|
      t.string :something
      t.string :somethingelse

      t.timestamps null: false
    end
  end
end
