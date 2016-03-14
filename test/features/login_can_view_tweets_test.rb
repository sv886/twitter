require "test_helper"

class LoginCanViewTweetsTest < Capybara::Rails::TestCase

  setup do
    User.create! username: "juan", password: "123"
  end

  test "Cannot view tweets before login" do
      visit root_path

      save_and_open_page

      fill_in "Username", with: "juan"
      fill_in "Password", with: "123"
      click_button "Log In"

      assert_content page, "¡Bienvenido"

    end
end
