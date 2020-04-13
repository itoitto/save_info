class AddRequestSellInfoIdToSellGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :sell_goods, :request_sell_info_id, :integer
  end
end
