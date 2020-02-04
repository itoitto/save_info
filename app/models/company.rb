# frozen_string_literal: true

class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :telno, :mail_address, :store_address,
            :access_info, :business_hour_start, :business_hour_end,
            :settlement_method_ids, presence: true
  has_many :company_settlement_methods, dependent: :delete_all
  has_many :settlement_methods, through: :company_settlement_methods

  accepts_nested_attributes_for :company_settlement_methods, allow_destroy: true
end
