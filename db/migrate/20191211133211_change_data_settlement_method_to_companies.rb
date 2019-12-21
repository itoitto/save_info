class ChangeDataSettlementMethodToCompanies < ActiveRecord::Migration[5.2]
  def change
    change_column :companies, :settlement_method, :string
  end
end
