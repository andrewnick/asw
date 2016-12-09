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
    @registry = GiftRegistrySheets.new('1UMX7yGfM-anGjuyxzlHm25bpA-mUzSzsr84QkC8iaLs')
    gifts = @registry.set_items()
  end

  task :remove_users => :environment do
  	@gifts = Gift.all
  	@gifts.update(user_id: :nil)
  end

  task :get_results=> :environment do
    @registry = GiftRegistrySheets.new('14RGF6-0H-2EwpVQGYu1PTrauQLMYE-GR-2M5Zta4dnQ')
    @registry.set_users_to_gifts()
  end
end
