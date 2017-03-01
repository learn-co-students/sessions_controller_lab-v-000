RSpec.describe "Login:" do
  it "lets the user enter her name and click 'login', whereafter the app refers to her by that name." do
    visit '/'
    fill_in 'name', with: 'Harry the Hairdresser'
    click_button 'login'
    expect(page).to have_content("Harry the Hairdresser")
  end

  it "returns the user to the login page if she fails to enter a name." do
    visit '/'
    fill_in 'name', with: ''
    click_button 'login'
    expect(page.body).to include "<input type=submit value='login'>"
    expect(page).to_not have_content("Hi, ")
  end
end
