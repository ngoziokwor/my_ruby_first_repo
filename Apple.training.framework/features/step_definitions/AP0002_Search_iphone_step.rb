
Given(/^that I am logged on the application$/) do
  @home_page.visit_logon
  @home_page.complete_my_valid_credentials
  @home_page.sign_on
  @home_page.verify_successful_logon
end



When(/^I search "(.*?)" on the application$/) do |item|
  @search_page.search_for_item(item)
end



Then(/^I should see result as "(.*?)"$/) do |result|

  expect(@result_page.verify_result(result)).to be true
end




Then(/^I should see "(.*?)"$/) do |result1|
  expect(@result_page.verify_result(result1)).to be true
end


And(/^I shall also see a second result "(.*?)"$/) do |result2|
  expect(@result_page.verify_result(result2)).to be true
end


And(/^I shall also see a third result "(.*?)"$/) do |result3|
  expect(@result_page.verify_result(result3)).to be true
end