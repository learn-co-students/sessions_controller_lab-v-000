require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  it 'displays a login form' do
    visit sessions_new_path

    expect(page).to have_field(:name)
    click_on "login"
  end

end
