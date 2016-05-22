FactoryGirl.define do
  factory :user do
	sequence(:first_name)  { |n| Faker::Name.first_name }
	sequence(:last_name) { |n| Faker::Name.last_name }
    name {"#{first_name} #{last_name}"}
    sequence(:email) { |n| Faker::Internet.email }
    password 'password'

    trait :family_jones do 
    	family_name "jones"
        sequence(:last_name) { |n| "Jones" }
    end

    trait :family_nicholas do 
    	family_name "nicholas"
        sequence(:last_name) { |n| "Nicholas" }
    end

    # factory :jones_family = create_list(:user, 4, :family_jones)
    # factory :nicholas_family = create_list(:user, 5, :family_nicholas)

  end
end
