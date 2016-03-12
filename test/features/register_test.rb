require "test_helper"

class RegisterTest < Capybara::Rails::TestCase
  test "Can register" do
    visit root_path

    click_link "Register"

    fill_in "Username", with: "juan"
    fill_in "Password", with: "123"
    fill_in "Password Confirmation", with: "123"
    click_button "Register User"


    assert_content page, "Todos"

  end
end
