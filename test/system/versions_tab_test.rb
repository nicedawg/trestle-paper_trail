require "application_system_test_case"

class VersionsTabTest < ApplicationSystemTestCase
  test "versions tab exists" do
    user = User.create(email: 'test@example.com', active: true)

    30.times do |i|
      user.update(active: i.even?)
    end

    visit "/admin/users"
    find("[data-url='/admin/users/#{user.id}']").click

    assert_selector "[role=tab]", text: "Versions"
  end
end
