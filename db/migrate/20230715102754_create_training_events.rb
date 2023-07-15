class CreateTrainingEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :training_events do |t|
      t.string :title, null: false
      t.references :category, null: false, foreign_key: true
      t.integer :status
      t.datetime :held_on
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
    add_index :training_events, :status
    add_index :training_events, :title
    add_index :training_events, %i[status category_id], name: 'index_training_events_on_status_category_id'
    add_index :training_events, %i[status user_id], name: 'index_training_events_on_status_user_id'
    add_index :training_events, :held_on
  end
end
