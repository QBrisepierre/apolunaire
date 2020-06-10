class CreateLaunchpads < ActiveRecord::Migration[6.0]
  def change
    create_table :launchpads do |t|
      t.string :full_name
      t.string :status
      t.string :locality
      t.string :region
      t.integer :latitude
      t.integer :longitude
      t.text :details

      t.timestamps
    end
  end
end
