class ChangeIntegerSettlementMethodToCompany < ActiveRecord::Migration[5.2]
  def change
    change_column :companies, :settlement_method, :integer
  end
end
