# frozen_string_literal: true

class RequestSellInfoController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_company!

  def new
    @goods_type = GoodsType.select('main_category').all

    goods_type_descriptions = GoodsType.select('main_category, detail_category').all

    goods_type_descriptions_array = []

    goods_type_descriptions.each do |goods_type_description|
      goods_type_descriptions_array.push([goods_type_description.main_category, goods_type_description.detail_category])
    end

    @goods_type_descriptions_array = goods_type_descriptions_array

    @request_sell_info = RequestSellInfo.new
    @request_sell_info.sell_goods.build
  end

  def index
  end

  def create
    @request_sell_info = RequestSellInfo.new(sell_goods_params)

    if params[:preview_button]
      render action: :show
    else
      @request_sell_info.save!(sell_goods_params)
    end
  end

  def confirm
    @request_sell_info = RequestSellInfo.new(sell_goods_params)

    render :new if @request_sell_info.invalid?
  end

  private

    def sell_goods_params
      params.require(:request_sell_info).permit(:company_id, :request_type, :sell_start_date, :sell_end_date, :mistake_reason, sell_goods_attributes: %i[id goods_name goods_type price sells_point _destroy])
    end
end
