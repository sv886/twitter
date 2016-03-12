require "test_helper"

class LoginCanViewTweetsTest < Capybara::Rails::TestCase
  test "Cannot view tweets before login" do
      bob = User.create username: "bob", password: "123"

      visit root_path

      fill_in "Username", with: "bob"
      fill_in "Password", with: "123"
      click_button "Log In"

      assert_content page, "Hola"
      # save_and_open_page
    end
end
