class RenameRequestToRequestSellInfo < ActiveRecord::Migration[5.2]
  def change
    rename_table :requests, :request_sell_info
  end
end
