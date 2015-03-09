Given(/^that I am on the home page$/) do
  @home_page.visit_logon
end

When(/^I complete my valid credentials$/) do
  @home_page.complete_my_valid_credentials
end

And(/^I click sign\-on the application$/) do
  @home_page.sign_on
end

Then(/^I should see a successful message$/) do
  expect(@home_page.verify_successful_logon).to be true

end