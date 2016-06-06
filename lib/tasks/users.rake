namespace :user do
  desc "Will create user account for Andrew and Sarah"
  task :create_users => :environment do
  	first_name = "Andrew"
  	last_name = "Nicholas"
  	name = "#{first_name} #{last_name}"
  	user = User.create!(first_name: first_name, last_name: last_name, family_name: last_name, name: name, email: 'email@email.com', :password => "aswedding")
  	puts "Created user #{first_name} #{last_name}"
  end

  task :add_users => :environment do
  	sheet = UserSheets.new()
  	sheet.save_users()
  end
end
