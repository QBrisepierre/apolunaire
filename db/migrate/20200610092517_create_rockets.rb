class CreateRockets < ActiveRecord::Migration[6.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :customer
      t.string :core
      t.string :engine
      t.string :engine_version
      t.string :propergol_1
      t.string :propergol_2
      t.integer :landing_legs
      t.boolean :activity
      t.integer :stage
      t.integer :booster
      t.text :description
      t.integer :height
      t.integer :diameter
      t.integer :mass
      t.string :image

      t.timestamps
    end
  end
end
