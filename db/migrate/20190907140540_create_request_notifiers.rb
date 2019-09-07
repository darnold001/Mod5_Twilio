class CreateRequestNotifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :request_notifiers do |t|
      t.string :todo_name
      t.string :urgency
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
