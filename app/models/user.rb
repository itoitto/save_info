# frozen_string_literal: true

# ユーザモデル
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  #
  # Omniログインユーザ作成処理
  #
  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    user ||= User.create(uid: auth.uid, provider: auth.provider,
                         email: User.dummy_email(auth),
                         password: Devise.friendly_token[0, 20],
                         image: auth.info.image,
                         name: auth.info.name,
                         nickname: auth.info.nickname,
                         location: auth.info.location)
    user
  end

  private

    #
    # Omniユーザ用ダミーメールアドレス作成処理
    #
    def self.dummy_email(auth)
      "#{auth.uid}-#{auth.provider}@example.com"
    end
end
