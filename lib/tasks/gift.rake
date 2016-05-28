namespace :gift do
  desc "Will create user account for Andrew and Sarah"
  task :list => :environment do
  	5.times do
  		Gift.create!(item: "Bed")
  	end
  end
end
