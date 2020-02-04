class RemoveSettlementMethodFromCompanies < ActiveRecord::Migration[5.2]
  def up
    remove_column :companies, :settlement_method
  end
end
