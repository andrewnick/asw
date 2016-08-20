require 'google_sheets'

class UserSheets
	def initialize ()
		# key = "1vDP420tRXrghpH_2kStAawuEI-bPg36J_LIzie2XqN4"
		key = "1-DzJ56st411pkXWpgVJlgYl1bBnRvRPAUf4pd4NERRY"
		@registry = Sheets.new(key, '448722155')
	end

	def get_list
		puts @registry.list
	end

	# family => {family_name: 'family_name', user: {first_name: name, last_name: name}}
	def save_users()
	    User.destroy_all
		Family.destroy_all
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
			user['name'] = "#{user['first_name'].strip} #{user['last_name'].strip}"
			user['password'] = 'aswedding'
			# user['attending'] = false
			# family['user'] = user
			# puts family.to_yaml
			puts user
			@family.users.create(user);
		end
	end	


end
