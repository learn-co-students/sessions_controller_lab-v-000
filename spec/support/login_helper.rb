module LoginHelper
  
  def dill_login
    fill_in("name", with: "Dill")
    click_button("Login")
  end

  def pip_login
    fill_in("name", with: "Pip")
    click_button("Login")
  end

end