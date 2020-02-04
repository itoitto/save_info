class CreateCompanySettlementMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :company_settlement_methods do |t|
      t.references :settlement_method, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
