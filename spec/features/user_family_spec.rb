require 'rails_helper'

describe 'user family', :type => :feature do
	it 'gets all users of a family' do
		jones_family = create_list(:user, 4, :family_jones)
		nicholas_family = create_list(:user, 5, :family_nicholas)

		nicholas_person = nicholas_family.first
	
		login(nicholas_person)
		expect(page).to have_content("Signed in successfully")

		visit rsvp_path

		nicholas_family.each do |family_member| 
			expect(page).to have_content(family_member.last_name)
		end
	end
end
