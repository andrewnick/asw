require 'google_sheets'

class UserSheets
	def	initalize()
		key = "1vDP420tRXrghpH_2kStAawuEI-bPg36J_LIzie2XqN4"
		@registry = Sheets.new(key)
	end

	def get_list
		puts @registry
	end

	def update_list
	end

end
