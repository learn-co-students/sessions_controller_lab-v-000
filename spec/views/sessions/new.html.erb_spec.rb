require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do


  before do
    controller.singleton_class.class_eval do
      protected
        def name
          session[:name]
        end
      helper_method :name
    end
  end

  it "login page is rendered when not logged in" do
    name = nil
    render
    expect(controller.request.fullpath).to eq sessions_new_path
  end

end
