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
    gifts = @registry.set_items()
  end

  task :remove_users => :environment do
  	@gifts = Gift.all
  	@gifts.update(user_id: :nil)
  end
end
