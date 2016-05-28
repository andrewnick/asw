require 'google_sheets'

class GiftRegistrySheets
	def	initialize ()
		key = '1UMX7yGfM-anGjuyxzlHm25bpA-mUzSzsr84QkC8iaLs'
		@gifts = Sheets.new(key)
	end

	def get_items
		@gifts.get_column('item')
  	end

  	def get_chosen
		@gifts.get_column('chosen')
  	end

  	# Run the first time
  	def set_items
		# @gifts.get_column('item')
		# @categories = @gifts.get_column('category')
		Gift.create(@gifts.get_sheet_array)
		Gift.update_all(chosen: false);
	  	# @gifts.each_with_index do |gift, index|
	  	# 	Gift.create(item: gift, chosen: false, category: @categories[index])
	  	# end
	end

	# def sync_list

	# 	# @gift = Gift.find(i)
	# 	gifts_d = {}
	# 	@gifts.get_sheet_array.each_with_index do |value, index|
	# 		puts value
	# 		puts index
	# 		value_d = {}
	# 		value.each do |key, value|


	# 		gifts_d[index] = value
	# 	end	 
	# 	puts gifts_d
	# end

end
