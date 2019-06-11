class AddPrefecureIdToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :prefecure_id, :integer
  end
end
