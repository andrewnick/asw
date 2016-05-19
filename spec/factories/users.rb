FactoryGirl.define do
  factory :user do
	first_name Faker::Name.first_name 
	last_name Faker::Name.last_name
    name "#{first_name} #{last_name}"
    username first_name
    password 'password'
	confirmed_at Date.today

  end
end
