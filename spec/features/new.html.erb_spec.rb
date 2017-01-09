require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do


  describe '/' do
    it 'shows link for login if no user' do
      visit '/'
      expect(page).to have_link(nil, href: '/login')
    end

  end
end
