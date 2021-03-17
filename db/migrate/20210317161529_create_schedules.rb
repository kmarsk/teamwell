class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.time :time
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
