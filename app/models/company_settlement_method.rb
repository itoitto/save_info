# frozen_string_literal: true

class CompanySettlementMethod < ApplicationRecord
  belongs_to :settlement_method, optional: true
  belongs_to :company, optional: true
end
