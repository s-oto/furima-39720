FactoryBot.define do
  factory :user do
    # nickname              {Faker::Name.initials(number: 2)}
    # email                 {Faker::Internet.email}
    # encrypted_password    {Faker::Internet.password(min_length: 6)}
    # last_name             {Faker::Name.initials(number: 2)}
    # last_name_read        {Faker::Name.initials(number: 2)}
    # first_name            {Faker::Name.initials(number: 2)}
    # first_name_read       {Faker::Name.initials(number: 2)}
    # birthday              {Faker::Internet.birthday}
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end