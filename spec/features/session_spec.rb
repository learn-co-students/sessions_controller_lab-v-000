require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  render_views
  describe 'post create' do
    it 'greets user with their name if they are logged in' do
      martha = "Martha"
      post :create, name: martha
      visit '/'
      expect(@request.session[:name]).to eq martha
    end

    it 'has a logout button if user is logged in' do
      martha = "Martha"
      post :create, name: martha
      visit '/'
      expect(response).to redirect_to('/')
    end

    it 'redirects user to login page if they are not logged in' do
      martha = ""
      post :create, name: martha
      visit '/'
      expect(page.body).to include 'login'
    end
  end
end
