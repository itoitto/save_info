class RemoveGoodsFromRequestSellInfos < ActiveRecord::Migration[5.2]
  def change
    remove_column :request_sell_infos, :goods_name, :string
    remove_column :request_sell_infos, :goods_type, :string
    remove_column :request_sell_infos, :price, :integer
    remove_column :request_sell_infos, :sells_point, :text
  end
end
