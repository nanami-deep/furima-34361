FactoryBot.define do
  factory :user do  
    nickname {"yabe"}
    email {"kkk@gmail.com"}
    password {"000000000"}
    password_confirmation {"000000000"}
    first_name {"山田"}
    first_name_kana {"ヤマダ"}
    last_name {"太朗"}
    last_name_kana {"タロウ"}
    birthday {"2000-01-01"}
  end
end

#{Faker::Name.initials(number: 2)}
#{Faker::Internet.free_email}
#Faker::Internet.password(min_length: 6)