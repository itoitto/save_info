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
  end

  def create
  end
end
