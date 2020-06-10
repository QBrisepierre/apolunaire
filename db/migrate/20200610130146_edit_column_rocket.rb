class EditColumnRocket < ActiveRecord::Migration[6.0]
  def change
    change_column :rockets, :height, :float
    change_column :rockets, :diameter, :float
    change_column :rockets, :mass, :integer
  end
end
