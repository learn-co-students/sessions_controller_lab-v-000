require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "renders a user's name in the view after login" do
    visit sessions_new_path
    fill_in 'name', with: 'Kali'
    click_button 'login'
    expect(page.body).to include 'Kali'
  end

  it "returns an error message when name is blank" do
    visit sessions_new_path
    fill_in 'name', with: ''
    click_button 'login'
    expect(page.body).to include 'Please Enter a Valid Name'
  end



  # it "returns an error message when name is blank"
  #   visit sessions_new_path
  #   fill_in 'name', with: nil
  #   click_button 'login'
  #   expect(page.body).to include "Please Enter a Valid Name"
  # end
end