# frozen_string_literal: true

class SettlementMethod < ApplicationRecord
  has_many :company_settlement_methods, dependent: :delete_all
  has_many :companies, through: :company_settlement_methods
end
