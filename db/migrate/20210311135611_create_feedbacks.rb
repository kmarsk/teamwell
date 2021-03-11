class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.integer :rating
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
