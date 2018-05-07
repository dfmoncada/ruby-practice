class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.datetime :starting_at
      t.datetime :finished_at
      t.datetime :created_at
      t.datetime :updated_at
      t.string :name
      t.string :description
      t.string :type
      t.references :event_element, foreign_key: true
      t.string :unit
      t.integer :measured_value

      t.timestamps
    end
  end
end
