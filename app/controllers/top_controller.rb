# frozen_string_literal: true

class TopController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
end
