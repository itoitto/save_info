Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # top画面
  root 'top#index'

  # ユーザログイン関係のパス
  devise_for :users

  # 企業ログイン関係のパス
  devise_for :companies, controllers: {
    sessions:      'companies/sessions',
    passwords:     'companies/passwords',
    registrations: 'companies/registrations'
  }

  # 店舗情報登録画面
  resources :register_store_info, only: [:index]
end
