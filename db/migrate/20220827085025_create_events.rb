class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.string :events_image
      t.datetime :date
      t.integer :member
      t.integer :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
