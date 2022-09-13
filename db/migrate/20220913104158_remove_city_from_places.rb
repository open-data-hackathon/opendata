class RemoveCityFromPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :city, :integer
  end
end
