class AddCoulumnToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :district_id, :integer, null: false
  end
end
