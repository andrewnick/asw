require 'google_sheets'

class UserSheets
	def initialize ()
		key = "1vDP420tRXrghpH_2kStAawuEI-bPg36J_LIzie2XqN4"
		@registry = Sheets.new(key)
	end

	def get_list
		puts @registry.list
	end

	# family => {family_name: 'family_name', user: {first_name: name, last_name: name}}
	def save_users()
		User.delete_all
		Family.delete_all
		@registry.get_list.each do |item|
			family = {}
			user = {}
			item.each do  |key, item|
				if key == 'family_name'
					@family = Family.find_or_create_by(family_name: item);
					puts item
					puts @family
				else
					user[key] = item.downcase
				end
			end
			user['name'] = "#{user['first_name']} #{user['last_name']}"
			user['password'] = 'aswedding'
			# user['attending'] = false
			# family['user'] = user
			# puts family.to_yaml
			puts user
			@family.users.create(user);
		end
	end	


end
