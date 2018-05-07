class AddEventElementToEventElement < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_elements, :event_element, foreign_key: true
  end
end
