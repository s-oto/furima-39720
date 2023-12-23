FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name             {"大戸"}
    last_name_read        {"オオト"}
    first_name            {"聡馬"}
    first_name_read       {"ソウマ"}
    birthday              {"1995-09-14"}
  end
end