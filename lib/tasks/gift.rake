namespace :gift do
  desc "Will pull gift registry into"
  # task :list => :environment do
  # 	@registry = GiftRegistrySheets.new()
  # 	gifts = @registry.get_items()

  # 	gifts.each do |gift|
  # 		Gift.update(item: gift, chosen: false)
  # 	end
  # end
  
  desc "Will pull gift registry into"
  task :list => :environment do
  	@registry = GiftRegistrySheets.new()
  	gifts = @registry.get_items()

  	gifts.each do |gift|
  		Gift.update(item: gift, chosen: false)
  	end
  end
end
