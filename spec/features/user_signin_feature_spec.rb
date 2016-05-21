require 'rails_helper'

describe 'user signin', :type => :feature do
	it 'allows signin for wedding guest' do
		user = create(:user)

		visit new_user_session_path
		fill_in 'Name', with: user.name, :match => :prefer_exact
		fill_in 'Password', with: user.password, :match => :prefer_exact
		click_button "Log In", :match => :prefer_exact

		expect(page).to have_content("Signed in successfully")
	end

	it 'allows signin for with trailing and starting white spaces' do
		user = create(:user)

		visit new_user_session_path
		fill_in 'Name', with: " #{user.name} ", :match => :prefer_exact
		fill_in 'Password', with: user.password, :match => :prefer_exact
		click_button "Log In", :match => :prefer_exact

		expect(page).to have_content("Signed in successfully")
	end

	it 'does not allow signin with invalid credentials' do
		user = create(:user)

		visit root_path
		fill_in 'Name', with: user.name, :match => :prefer_exact
		fill_in 'Password', with: "notpassword", :match => :prefer_exact
		click_button "Log In", :match => :prefer_exact

		expect(page).to have_content("Invalid Name or password")
	end
end

describe 'user signout', :type => :feature do
	it 'allows user to sign in and then logout' do
		@user = create(:user)
	
		login(@user)
		expect(page).to have_content("Signed in successfully")
		
		logout()
		expect(page).not_to have_content(@user.first_name)
	end
end