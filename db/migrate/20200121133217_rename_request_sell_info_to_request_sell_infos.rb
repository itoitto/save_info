class RenameRequestSellInfoToRequestSellInfos < ActiveRecord::Migration[5.2]
  def change
    rename_table :request_sell_info, :request_sell_infos
  end
end
