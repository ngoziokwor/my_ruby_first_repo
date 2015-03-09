
Given(/^I am on the homepage of cs\-cart application$/) do
  home_page.visit_home
end


When(/^I supply my valid credentials$/) do
  home_page.login_with_valid_data
end

Then(/^I should see a welcome message$/) do
  expect(landing_page.verify_welcome_message).to be true
end