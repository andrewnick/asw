module UserHelper

	def login(user)
		visit new_user_session_path
		fill_in 'Name', with: user.name, :match => :prefer_exact
		fill_in 'Password', with: user.password, :match => :prefer_exact
		click_button "Log In", :match => :prefer_exact
	end

	def logout()
		visit root_path
		click_link 'Log Out'
	end
end