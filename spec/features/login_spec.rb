RSpec.describe "Login:" do
  it "lets the user enter her name and click 'login', whereafter the app refers to her by that name." do
    visit '/'
    fill_in 'name', with: 'Harry the Hairdresser'
    click_button 'login'
    expect(session[:name]).to eq("Harry the Hairdresser")
  end

end
