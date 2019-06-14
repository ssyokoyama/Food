class AddCityIdToPrefectures < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :city_id, :integer
  end
end
