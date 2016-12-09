require 'google_sheets'

class GiftRegistrySheets
	def	initialize (key)
		# key = '1UMX7yGfM-anGjuyxzlHm25bpA-mUzSzsr84QkC8iaLs'
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

	def set_users_to_gifts
		@ws = @gifts.get_ws()

		users = User.all
	    users.each_with_index do |user, u_index|
	      @ws[u_index + 1, 1] = user.name
	      user.gifts.each_with_index do |gift, g_index|
	        puts user.name
	        puts gift.item
	        puts u_index + 1
	        puts g_index + 2
	        @ws[u_index + 1, g_index + 2] =  gift.item
	      end
	    end

		@ws.save
	end
end
