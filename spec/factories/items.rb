FactoryBot.define do
  factory :item do
    association :user
    item {"あ"}
    description {"あ"}
    price {300}
    category_id {2}
    status_id {2}
    charge_id {2}
    day_id {2}
    prefecture_id {2}

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
