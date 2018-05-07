class ChangeActivityTypeAndUnitsFromActivity < ActiveRecord::Migration[5.2]
  def change
  	remove_column :activities, :type
  	remove_column :activities, :unit
  end
end
