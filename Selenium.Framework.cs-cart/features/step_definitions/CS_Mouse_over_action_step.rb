
Given(/^that I am on a page$/) do
  home_page.visit_home
end


When(/^I select electronics$/) do
  mouse_over_page.select_electronics
end


Then(/^I should be able to click on the sub page$/) do

end
