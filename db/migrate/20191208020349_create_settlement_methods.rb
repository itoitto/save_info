class CreateSettlementMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :settlement_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
