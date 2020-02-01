FactoryBot.define do
  factory :request do
    company_id { "MyString" }
    integer { "MyString" }
    request_type { 1 }
    sell_start_date { "2020-01-21" }
    sell_end_date { "2020-01-21" }
    mistake_reason { "MyString" }
    goods { "MyString" }
    goods_type { 1 }
    price { 1 }
    sells_point { "MyString" }
    coupon_title { "MyString" }
    coupon_start_date { "2020-01-21" }
    coupon_end_date { "2020-01-21" }
    coupon_content { "MyString" }
    coupon_condition { "MyString" }
  end
end
