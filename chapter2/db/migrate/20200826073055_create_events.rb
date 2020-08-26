class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.string :content
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
