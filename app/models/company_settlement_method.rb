# frozen_string_literal: true

class CompanySettlementMethod < ApplicationRecord
  belongs_to :settlement_method
  belongs_to :company
end
