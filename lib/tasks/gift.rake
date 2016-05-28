namespace :gift do
  desc "Will create user account for Andrew and Sarah"
  task :list => :environment do
  	@registry = GiftRegistrySheets.new()
  	gifts = @registry.get_items()

  	gifts.each do |gift|
  		Gift.update(item: gift, chosen: false)
  	end
  end
end
