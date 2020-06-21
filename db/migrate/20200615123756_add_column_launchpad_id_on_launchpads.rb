class AddColumnLaunchpadIdOnLaunchpads < ActiveRecord::Migration[6.0]
  def change
    add_column :launchpads, :launchpad_id_long, :string
  end
end
