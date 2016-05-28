require 'rails_helper'
require 'google_drive'
require 'google_sheets'


describe 'google sheets api', type: :services do
	# it 'gets the correct spreadsheet and pulls correct data from drive' do
	# 	sheet = Sheets.new("124FUYGlSb6TpcmYqZEdBRpwEid8zQdt4VCCKOGeRTb8")

	# 	expect(sheet.get_cell(1, 1)).to eq("test")
	# end

	# it 'sets data in spreadsheet' do
	# 	sheet = Sheets.new("124FUYGlSb6TpcmYqZEdBRpwEid8zQdt4VCCKOGeRTb8")
	# 	sheet.set_cell(3, 3, "Hello")
	# 	expect(sheet.get_cell(3, 3)).to eq("Hello")
	# end

	# it 'saves data to first name and last name column' do
	# 	sheet = Sheets.new("124FUYGlSb6TpcmYqZEdBRpwEid8zQdt4VCCKOGeRTb8")
	# 	sheet.add_names("Joe", "Blog")
	# 	expect(sheet.get_cell(4, 2)).to eq("Joe")
	# 	expect(sheet.get_cell(4, 3)).to eq("Blog")
	# end

	# it 'gets hash of sheet' do
	# 	sheet = Sheets.new("1vDP420tRXrghpH_2kStAawuEI-bPg36J_LIzie2XqN4")
	# 	# puts sheet.get_hash
	# end

	it 'gets all users from spreadsheet' do
		sheet = Sheets.new("1vDP420tRXrghpH_2kStAawuEI-bPg36J_LIzie2XqN4")
		# sheet.get_hash
		user = sheet.save_users(sheet.get_hash)
		puts user
		# expect(user.family_name).to eq("Bichans")
		# expect(user.first_name).to eq("Cam")
		# expect(user.last_name).to eq('Bichan')
	end

	# it 'saves users to the database' do
	# 	sheet = Sheets.new("124FUYGlSb6TpcmYqZEdBRpwEid8zQdt4VCCKOGeRTb8")
	# 	sheet.get_hash
	# end

	it 'saves rsvp to spreadsheet' do
	end
end
