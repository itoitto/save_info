# frozen_string_literal: true

# request_sell_infoモデル
class RequestSellInfo < ApplicationRecord
  has_many :sell_goods, dependent: :destroy
  accepts_nested_attributes_for :sell_goods, reject_if: :all_blank, allow_destroy: true
end
