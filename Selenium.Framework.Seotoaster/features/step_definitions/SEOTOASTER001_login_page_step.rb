
Given(/^I am on homepage of Seotoaster application$/) do
  home_page.visit_home
end



When(/^I login with valid credentials$/) do
  home_page.login_with_valid_id
end



Then(/^I should see a welcome message$/) do
  expect(landing_page.verify_valid_login).to be true
end