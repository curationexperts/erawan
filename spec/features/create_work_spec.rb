require 'rails_helper'
include Warden::Test::Helpers

# NOTE: If you generated more than one work, you have to set "js: true"
RSpec.feature 'Create a Work', js: false do
  context 'a logged in user' do
    let(:user_attributes) do
      { email: 'test@example.com' }
    end

    let(:user) do
      User.new(user_attributes) { |u| u.save(validate: false) }
    end

    before do
      AdminSet.find_or_create_default_admin_set_id
      login_as user
    end

    scenario do
      visit '/dashboard'
      click_link "Works"

      click_link "Add new work"

      expect(page).to have_content "Add New Work"
    end
  end
end
