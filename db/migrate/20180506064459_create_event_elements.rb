class CreateEventElements < ActiveRecord::Migration[5.2]
  def change
    create_table :event_elements do |t|
      t.datetime :starting_at
      t.datetime :due_date
      t.datetime :created_at
      t.datetime :updated_at
      t.string :name
      t.boolean :reminder

      t.timestamps
    end
  end
end
