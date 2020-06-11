class RemoveColumnLaunchpad < ActiveRecord::Migration[6.0]
  def change
    remove_column :launchpads, :details
  end
end
