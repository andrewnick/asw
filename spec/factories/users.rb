FactoryGirl.define do
  factory :user do
	sequence(:first_name)  { |n| Faker::Name.first_name }
	sequence(:last_name) { |n| Faker::Name.last_name }
    name {"#{first_name} #{last_name}"}
    username {first_name}
    password 'password'

    trait :family_jones do 
    	family_name "jones"
    end

    trait :family_nicholas do 
    	family_name "nicholas"
    end

  end
end
