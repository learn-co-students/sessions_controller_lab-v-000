require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

  describe 'session new' do
    it 'shows a login form' do
      render
      expect(rendered).to include 'login'
    end
  end


end
