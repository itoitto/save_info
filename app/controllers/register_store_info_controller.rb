# frozen_string_literal: true

class RegisterStoreInfoController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_company!

  def new
    @company = Company.new
  end

  def index
    # 申請画面の登録
    @company = Company.find(current_company.id)
  end

  def update
    @company = Company.find(current_company.id)

    @company.update(company_params)
    render :show
  end

  def show; end

  private

    def company_params
      params.require(:company).permit(:name, :telno, :mail_address, :store_address, :access_info,
                                      :business_hour_start,
                                      :business_hour_end, settlement_method_ids: [])
    end
end
