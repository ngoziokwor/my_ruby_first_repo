Given(/^that I have searched for "(.*?)"$/) do |item|
  home_page.visit_home
  search_page.search_for_item(item)
end


When(/^I add "(.*?)"$/) do |item|
  add_cart_page.add_item(item)
end


Then(/^Cart should contain "(.*?)"$/) do |item|
  expect(result_page.verify_item_added(item)).to be true
end