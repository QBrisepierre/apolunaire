class ChangeCoulumnlaunch1OnLaunches < ActiveRecord::Migration[6.0]
  def change
    change_column :launches, :launch_1, :string, array: true, default: [], using: "(string_to_array(launch_1, ','))"
  end
end
