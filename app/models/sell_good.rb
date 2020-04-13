# frozen_string_literal: true

# sell_infoモデル
class SellGood < ApplicationRecord
  belongs_to :request_sell_info
end
