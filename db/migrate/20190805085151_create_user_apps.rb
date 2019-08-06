class CreateUserApps < ActiveRecord::Migration[5.0]
  def change
    create_table :user_apps do |t|
      t.string :user_id
      t.integer :app_1
      t.integer :app_2
      t.integer :app_3
      t.integer :app_4
      t.integer :app_5
      t.integer :app_6

      t.timestamps
    end
  end
end
