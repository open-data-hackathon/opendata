class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title, null: false, limit: 255
      t.string :body, null: false, limit: 16383
      t.string :events_image
      t.datetime :date, null: false
      t.integer :member
      t.integer :state, default: 0, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
