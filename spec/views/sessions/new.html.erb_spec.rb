require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "title" do
    it 'submits a username' do
      visit '/sessions/new'
      fill_in('name', :with => 'John')
      click_button 'login'
    end
  end
end
