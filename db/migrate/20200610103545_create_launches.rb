class CreateLaunches < ActiveRecord::Migration[6.0]
  def change
    create_table :launches do |t|
      t.string :name
      t.string :details
      t.date :launch_date_utc
      t.date :static_fire_utc
      t.string :launch_illustration
      t.string :launch_1
      t.string :launch_2
      t.boolean :success
      t.references :rocket, null: false, foreign_key: true
      t.references :launchpad, null: false, foreign_key: true

      t.timestamps
    end
  end
end
