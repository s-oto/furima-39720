FactoryBot.define do
  factory :order_address do
    postal_cord { '123-4567' }
    prefecture_id { 1 }
    city { '東京都' }
    address {'世田谷区'}
    building_name { '東京ハイツ' }
    phone_number { '012345678900' }
    token {"tok_abcdefghijk00000000000000000"}
  end
end
