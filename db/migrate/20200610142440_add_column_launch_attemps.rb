class AddColumnLaunchAttemps < ActiveRecord::Migration[6.0]
  def change
    add_column :launchpads, :launch_attempts, :integer
  end
end
