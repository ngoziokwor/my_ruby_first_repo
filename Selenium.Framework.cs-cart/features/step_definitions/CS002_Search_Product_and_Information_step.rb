Given(/^I am on homepage$/) do
  home_page.visit_home
end


When(/^I search for "(.*?)"$/) do |item|
  search_page.search_for_item(item)
end



Then(/^I should see "(.*?)" and "(.*?)"$/) do |result1, result2|
  expect(result_page.verify_result(result1, result2)).to be true
end



