require 'rails_helper'
RSpec.describe 'user profile page' do
	before do
		@user = create_user
		log_in @user
	end
	it "displays a user's secrets on profile page" do
		secret = Secret.create(content: 'secret', user: @user)
		visit "/users/#{@user.id}"
		expect(page).to have_text("#{secret.content}")
	end
	it "displays everyone's secrets" do
		user2 = create_user 'julius', 'julius@lakers.com'
		secret1 = Secret.create(content: 'secret', user: @user)
		secret2 = Secret.create(content: 'secret', user: user2)
		visit '/secrets'
		expect(page).to have_text(secret1.content)
		expect(page).to have_text(secret2.content)
	end
end