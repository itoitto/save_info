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
