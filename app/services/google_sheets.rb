require 'google_drive'

class Sheets
	def initialize(sheet_key, gid)
    	@session = GoogleDrive.saved_session('config.json')
		@ws = @session.spreadsheet_by_key(sheet_key).worksheet_by_gid(gid)
 	end

	def get_cell(x, y)
		@ws[x, y]
	end

	def set_cell(x, y, string)
		@ws[x, y] = string
		@ws.save
	end

	# def add_names(first_name, last_name)
	# 	@ws.list.push({"First Name" => first_name, "Last Name" => last_name})
	# 	@ws.save
	# end

	def get_column(col_name)
		column = []
		@ws.list.each do |col|
			column.push(col.input_value(col_name))
		end
		return column
	end

	def get_sheet_array
		@ws.list.to_hash_array
	end

	def get_list
		@ws.list
	end



	# family => {family_name: 'family_name', user: {first_name: name, last_name: name}}
	def save_users(user_list)
		family_u = []
		user_list.each do |item|
			item.each do  |key, item|
				family = {}
				user = {}
				if key == 'family_name'
					family[key] = item
				else
					user[key] = item
				end
				family['user'] = user
				users.push(family)
			end
			
		end
		Family.create(family)
		puts users
	end	

	def reload()
		@ws.reload
	end
end
