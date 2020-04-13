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
  resources :register_store_info

  # 決済手段
  resources :settlement_methods

  # セール情報申請画面
  post '/request_sell_info/confirm', to: 'request_sell_info#confirm'
  get '/request_sell_info/confirm', to: 'request_sell_info#confirm'
  get '/request_sell_info', to: 'request_sell_info#index'
  post '/request_sell_info', to: 'request_sell_info#create'
  get '/request_sell_info/new', to: 'request_sell_info#new'

  # resources :request_sell_info do
  #   collection do
  #     get 'confirm'
  #     post 'confirm'
  #   end
  # end
end
