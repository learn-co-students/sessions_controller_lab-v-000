RSpec.describe "Homepage:" do
  it "shows a logged-out user a login button." do
    visit '/'
    expect(page.body).to include "<input type=submit value='login'>"
  end

  it "greets a logged-in user by name and provides a logout link." do
    visit '/'
    fill_in 'name', with: 'Patricia the Programmer'
    click_button 'login'
    expect(page.body).to include "Hi, Patricia the Programmer."
    expect(page.body).to include "<input type=submit value='logout'>"
  end
end
