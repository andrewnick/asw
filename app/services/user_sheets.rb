require 'google_sheets'

class UserSheets
	def initialize ()
		# key = "1vDP420tRXrghpH_2kStAawuEI-bPg36J_LIzie2XqN4"
		key = "107-G0Q_rTyEEc4NzJFsZ-tyhXLR7EjJ9VaIEXDd8oIw"
		@registry = Sheets.new(key, "0")
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

	def pull_from_db
		@ws = @registry.get_ws()
		i = 1
		@ws[1,1] = "Name"
		@ws[1,2] = "Attending"
		@ws[1,3] = "Dietary Requirements"
		@ws[1,4] = "Sign In Count"

		User.all.order(id: :asc).each_with_index do |user, index|
			puts user.name
			@ws[index + 2, 1] = user.name
			@ws[index + 2, 2] = user.status
			@ws[index + 2, 3] = user.dietary_requirements
			@ws[index + 2, 4] = user.sign_in_count
		end
		@ws.save
	end

end
