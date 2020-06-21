class AddColumnRocketIdOnRockets < ActiveRecord::Migration[6.0]
  def change
    add_column :rockets, :rocket_id_long, :string
  end
end
