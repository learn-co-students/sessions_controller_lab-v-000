require 'rails_helper'

describe "login", :type => :view do
  it "logs user in with name given via form" do
    visit login_path
    fill_in 'name', with: 'Kyle'
    click_button 'login'
    expect(page.body).to include 'Hi, Kyle.'
  end

  it "does not log user in without a name given via form" do
    visit login_path
    click_button 'login'
    expect(page.current_path).to eq(login_path)
  end
end

describe "homepage", type: :view do
  before do
    session[:name] = "Kyle"
  end

  it "redirects to login after logged out" do
    visit root_path
    click_button 'logout'
    expect(page.current_path).to eq(login_path)
  end
end
