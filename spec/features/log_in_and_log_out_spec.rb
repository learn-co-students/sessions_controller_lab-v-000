describe 'Logging in and Logging out' do
  before(:each) do
    visit '/'
  end

  it 'visiting the root page will require login' do
    expect(has_field? :name).to eq(true)
  end

  it 'when visiting root and logged in there will be a logout button' do
    fill_in 'name', with: 'foobar'
    click_button 'login'
    expect(has_button? 'Log Out').to eq(true)
  end

  it 'when logged in has the capability to logout' do
    fill_in 'name', with: 'foobar'
    click_button 'login'
    click_button 'Log Out'
    expect(has_field? :name).to eq(true)

  end
end
