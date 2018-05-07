class AddTypeToActivity < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :type, foreign_key: true
  end
end
