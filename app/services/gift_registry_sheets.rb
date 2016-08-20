require 'google_sheets'

class GiftRegistrySheets
	def	initialize ()
		key = '1rx-V91LtsJzWI9TKEdZSjVSO7pOV_zNqBQlioxMad2k'
		@gifts = Sheets.new(key, 0)
	end

	def get_items
		@gifts.get_column('item')
  	end

  	def get_chosen
		@gifts.get_column('chosen')
  	end

  	# Run the first time
  	def set_items
		Gift.destroy_all
		Gift.create(@gifts.get_sheet_array)
		Gift.update_all(chosen: false);
	end

end
