# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # ログイン済みではない場合、ログイン画面に遷移する
  before_action :authenticate_user!

  private

    # ログイン後のリダイレクト先
    def after_sign_in_path_for(resource_or_scope)
      if resource_or_scope.is_a?(Company)
        register_store_info_index_path
      else
        root_path
      end
    end
end
