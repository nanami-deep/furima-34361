FactoryBot.define do
  factory :user do  
    nickname {"yabe"}
    email {Faker::Internet.email}
    password {"a1a1a1a1a"}
    password_confirmation {password}
    first_name {"山田"}
    first_name_kana {"ヤマダ"}
    last_name {"太朗"}
    last_name_kana {"タロウ"}
    birthday {"2000-01-01"}
  end
end