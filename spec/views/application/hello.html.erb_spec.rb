require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :view do

  describe 'once a user has logged in' do
    it 'shows the users name' do
      session[:name] = "Kaitlin"
      render
      expect(rendered).to include 'Kaitlin'
    end
  end

end
