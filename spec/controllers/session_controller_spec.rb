require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  include Capybara::DSL
  render_views
  describe 'post create' do
    it 'redirects to the login page if :name is nil' do
      post :create
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

    it 'redirects to login page if :name is empty' do
      post :create, name: ''
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

    it 'sets session[:name] if :name was given' do
      me = 'Werner Brandes'
      post :create, name: me
      expect(@request.session[:name]).to eq me
    end

    it 'redirects to "/" if logged in' do
      me = 'Werner Brandes'
      post :create, name: me
      expect(response).to redirect_to('/')
    end


  end

  describe 'post destroy' do
    it 'leaves session[:name] nil if it was not set' do
      post :destroy
      expect(@request.session[:name]).to be nil
    end

    it 'clears session[:name] if it was set' do
      post :create, name: 'Trinity'
      expect(@request.session[:name]).not_to be nil
      post :destroy
      expect(@request.session[:name]).to be nil
    end
  end

  describe "Login form" do
    it "renders the login screen" do
      post :destroy
      visit '/login'
      expect(response).to render_template("sessions/new")
    end

    it "displays a form field" do
      visit '/login'
      expect(page.body).to have_selector("form")
    end

    it "allows you to login" do
      visit '/login'
      fill_in(:name, :with => "Marla")
      click_button("login")

      expect(page.body).to render_template("application/hello")
    end
  end

  describe "Application Hello" do
    it "Says hello" do
      visit '/login'
      fill_in(:name, :with => "Marla")
      click_button("login")

      expect(page.body).to have_text("Hi, Marla.")
    end

    it "displays a logout button" do
      me = 'Marla'
      post :create, name: me
      visit '/'

      expect(page.body).to have_selector("form")
    end

    it "Allows you to logout" do
      me = 'Marla'
      post :create, name: me
      visit '/'

      click_button("logout")

      expect(response).to redirect_to("/")
      expect(response).to render_template("sessions/new")
    end
  end

end
