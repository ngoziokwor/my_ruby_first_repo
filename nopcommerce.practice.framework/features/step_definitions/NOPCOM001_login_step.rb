Given(/^I am on homepage$/) do
  home_page.visit_logon_page
end


When(/^I login with valid credentials$/) do
  home_page.login_with_valid_data
end


Then(/^I should see a welcome message$/) do
  expect(landing_page.verify_login).to be true
end