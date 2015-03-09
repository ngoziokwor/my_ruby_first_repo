Given(/^I am an authenticated user$/) do
  home_page.visit_logon_page
  home_page.login_with_valid_data
end



When(/^I add a new customer to the application$/) do
  customer_page.select_customer
  add_new_page.add_new_customer
end


Then(/^I should see the newly added customer$/) do
  expect(customer_page.verify_new_customer).to be true
end