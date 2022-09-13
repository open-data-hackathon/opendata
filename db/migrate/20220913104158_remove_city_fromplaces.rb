class RemoveCityFromplaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :city
  end
end
