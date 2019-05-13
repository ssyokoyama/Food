class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
        t.string :name
        t.integer :price
        t.integer :item_id
        t.integer :shop_id
        t.integer :category_id
        t.string :image
        t.dateime :finish_at
        
      t.timestamps
    end
  end
end
