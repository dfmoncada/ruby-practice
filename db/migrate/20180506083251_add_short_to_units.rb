class AddShortToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :short, :string
  end
end
