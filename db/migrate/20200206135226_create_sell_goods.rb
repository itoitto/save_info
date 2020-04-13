class CreateSellGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_goods do |t|
      t.string :goods_name
      t.string :goods_type
      t.integer :price
      t.text :sells_point

      t.timestamps
    end
  end
end
