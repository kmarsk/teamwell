class RemoveFieldsFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :frequency, :string
    remove_column :activities, :time, :time
    remove_column :activities, :date, :date
  end
end
