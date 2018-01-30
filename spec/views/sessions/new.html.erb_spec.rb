require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  describe 'login form' do
    it 'has a form to login' do
      render
      expect(rendered).to include "form action" 
      expect(rendered).to include "method=post"
      expect(rendered).to include "input name=name"
      expect(rendered).to include"input type=submit value='login"
    end
  end
end
