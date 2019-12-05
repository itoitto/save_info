# frozen_string_literal: true

class RegisterStoreInfoController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_company!

  def index
    render
  end
end
