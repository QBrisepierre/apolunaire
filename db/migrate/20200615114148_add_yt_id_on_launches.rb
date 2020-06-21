class AddYtIdOnLaunches < ActiveRecord::Migration[6.0]
  def change
    add_column :launches, :youtube_id, :string
  end
end
