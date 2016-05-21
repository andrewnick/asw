describe 'user family', :type => :feature do
	it 'allows signin for wedding guest' do
		user = create(:user)

		visit new_user_session_path
		fill_in 'Name', with: user.name, :match => :prefer_exact
		fill_in 'Password', with: user.password, :match => :prefer_exact
		click_button "Log In", :match => :prefer_exact

		expect(page).to have_content("Signed in successfully")
	end
end
