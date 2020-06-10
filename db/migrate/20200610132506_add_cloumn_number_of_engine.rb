class AddCloumnNumberOfEngine < ActiveRecord::Migration[6.0]
  def change
    add_column :rockets, :number_engine, :integer
  end
end
