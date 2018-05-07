class AddUnitToActivityType < ActiveRecord::Migration[5.2]
  def change
    add_reference :activity_types, :unit, foreign_key: true
  end
end
