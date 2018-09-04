require 'rails_helper'

RSpec.describe 'application/hello' do
  before do
    session[:name] = nil 
  end

  it 'displays login link if user is not logged in' do
    render
    expect(rendered).to match /login/
  end
end
