class EditColumnLatitudeAndLongitude < ActiveRecord::Migration[6.0]
  def change
    change_column :launchpads, :latitude, :float
    change_column :launchpads, :longitude, :float
  end
end
