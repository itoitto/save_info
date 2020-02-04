# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 決済手段の登録
SettlementMethod.create!(name: "現金")
SettlementMethod.create!(name: "クレジットカード")
SettlementMethod.create!(name: "電子マネー決済")
SettlementMethod.create!(name: "Apple pay")
SettlementMethod.create!(name: "Google Pay")
SettlementMethod.create!(name: "Amazon Pay")
SettlementMethod.create!(name: "楽天ペイ")
SettlementMethod.create!(name: "LINE PAY")
SettlementMethod.create!(name: "Paypal")
SettlementMethod.create!(name: "paypay")

GoodsType.create!(main_category: "レトルト・粉類", detail_category: "レトルト、惣菜、乳製品、缶詰、乾物など")
GoodsType.create!(main_category: "肉・魚・野菜・果物", detail_category: "魚介類、肉類、野菜、果物、卵、乳製品、レトルト、惣菜、缶詰、乾物など")
GoodsType.create!(main_category: "米・麺・パン・シリアル・卵", detail_category: "米、雑穀、ごはんパック、ラーメン、パスタ、パン、シリアル、卵など")
GoodsType.create!(main_category: "調味料・スパイス・発酵食品", detail_category: "しょうゆ、ドレッシング、塩、砂糖、甘味料、味噌、香辛料、スパイス、納豆、漬物、豆腐など")
GoodsType.create!(main_category: "スイーツ・菓子", detail_category: "ケーキ、洋菓子、チョコレート、スナック菓子、ビスケット、クッキー、おつまみ、珍味、せんべい、米菓子など")
GoodsType.create!(main_category: "飲料水", detail_category: "水、お茶飲料、炭酸飲料、野菜ジュース、フルーツジュース、コーヒー飲料、スポーツ飲料")
GoodsType.create!(main_category: "お酒", detail_category: "ビール、発泡酒、ワイン、日本酒、チューハイ、カクテル、焼酎、ノンアルコール飲料")
