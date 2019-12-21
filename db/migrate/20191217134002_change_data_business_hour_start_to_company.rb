class ChangeDataBusinessHourStartToCompany < ActiveRecord::Migration[5.2]
  def change
    change_column :companies, :business_hour_start, :time
    change_column :companies, :business_hour_end, :time
  end
end
