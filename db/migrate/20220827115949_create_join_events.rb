class CreateJoinEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :join_events do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end

    add_index :join_events, [:user_id, :event_id], unique: true
  end
end
