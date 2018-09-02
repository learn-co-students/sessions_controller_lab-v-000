<%= form_tag ({controller: 'sessions', action: 'create', method: 'post'}) do %>
  <input name=name>
  <input type=submit value='login'>
<% end %>


spec.rb
require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
end
