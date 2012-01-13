FactoryGirl.define do
  factory :extended_user, :class => User do
    name                     "Fred"
    sex                      "M"
    birthdate                 "1980-01-01"
    email                    "fpaula@gmail.com"
    terms_of_service_accepted true
    admin                     true
    active                    true
    password                  "abc123"
  end
end