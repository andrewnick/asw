require 'rails_helper'

describe 'user signin', :type => :feature do
	it 'allows signin for wedding guest' do
		user = create(:user)

		visit new_user_session_path
		fill_in 'Name', with: user.name, :match => :prefer_exact
		fill_in 'Password', with: user.password, :match => :prefer_exact
		click_button "Log in", :match => :prefer_exact

		expect(page).to have_content("hello")
	end

	# it 'allows signin for andrew or sarah' do
	# 	user = create(:user)

	# 	visit new_user_session_path
	# 	fill_in 'Email', with: user.email, :match => :prefer_exact
	# 	fill_in 'Password', with: user.password, :match => :prefer_exact
	# 	click_button "Log in", :match => :prefer_exact

	# 	expect(page).to have_content("Signed in successfully")
	# end

	it 'does not allow signin with invalid credentials' do
		user = create(:user)

		visit root_path
		fill_in 'Name', with: user.name, :match => :prefer_exact
		fill_in 'Password', with: "notpassword", :match => :prefer_exact
		click_button "Log in", :match => :prefer_exact

		expect(page).to have_content("Invalid email or password")
	end
end

describe 'user signout', :type => :feature do
	# it 'allows user to sign in and then logout' do
	# 	@user = create(:user)
	
	# 	login(@user)
	# 	expect(page).to have_content("Signed in successfully")
		
	# 	logout(@user)
	# 	expect(page).to have_content("Signed out successfully")
	# end
end