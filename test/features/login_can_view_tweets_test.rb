require "test_helper"

class LoginCanViewTweetsTest < Capybara::Rails::TestCase
  test "Cannot view tweets before login" do
      bob = User.create username: "bob", password_digest: "12345678"

      visit root_path
      refute_content page, "Goodbye All!"
    end

    # test "Can view tweets after login" do
    #   visit root_path
    #   assert_content page, "Hello World"
    #   refute_content page, "Goobye All!"
    # end
end
