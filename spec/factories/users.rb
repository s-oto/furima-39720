FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.name}
    email                 {Faker::Internet.email}
    password              {souma914}
    password_confirmation {password}
    last_name             {"大戸"}
    last_name_read        {"オオト"}
    first_name            {"聡馬"}
    first_name_read       {"ソウマ"}
    birthday              {Faker::Internet.birthday}
  end
end