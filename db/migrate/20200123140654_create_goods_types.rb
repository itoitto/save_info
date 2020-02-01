class CreateGoodsTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :goods_types do |t|
      t.string :main_category
      t.string :detail_category

      t.timestamps
    end
  end
end
