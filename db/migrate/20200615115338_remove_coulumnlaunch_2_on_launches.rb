class RemoveCoulumnlaunch2OnLaunches < ActiveRecord::Migration[6.0]
  def change
    remove_column :launches, :launch_2
  end
end
