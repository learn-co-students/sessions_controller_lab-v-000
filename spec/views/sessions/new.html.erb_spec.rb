require 'rails_helper'

RSpec.describe "sessions/new", type: :view do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "shows the user's name if logged in" do
    visit '/sessions/new'
    fill_in 'name', with: 'Chirag'
    click_button 'login'
    expect(page.body).to include 'Chirag'
  end
end
