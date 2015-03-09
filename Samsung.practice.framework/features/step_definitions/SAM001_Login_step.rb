


Given(/^I am on  homepage$/) do
  @home_page.visit_logon
end


When(/^I logon the the application with valid data$/) do
  @home_page.logon_with_valid_credentials
 end



When(/^I should see a message as (.*?)$/) do  |username|
  expect(@home_page.verify_logon(username)).to be true
end




When(/^I logon the the application with invalid data$/) do
  @home_page.logon_with_invalid_credentials
end