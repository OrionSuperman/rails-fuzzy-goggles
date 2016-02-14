require 'rails_helper'
RSpec.describe 'editing user' do
	it 'displays prepopulated form' do
		user = create_user
		log_in user
		visit "/users/#{user.id}"
		click_link 'Edit Profile'
		expect(page).to have_field('Email')
		expect(page).to have_field('Name')
	end
end