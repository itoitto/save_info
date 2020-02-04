class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :company_id
      t.integer :request_type
      t.date :sell_start_date
      t.date :sell_end_date
      t.string :mistake_reason
      t.string :goods_name
      t.string :goods_type
      t.integer :price
      t.text :sells_point
      t.string :coupon_title
      t.date :coupon_start_date
      t.date :coupon_end_date
      t.text :coupon_content
      t.string :coupon_condition

      t.timestamps
    end
  end
end
