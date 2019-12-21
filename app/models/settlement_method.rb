# frozen_string_literal: true

class SettlementMethod < ApplicationRecord
  has_many :company_settlement_methods
  has_many :companies, through: :company_settlement_methods
end
