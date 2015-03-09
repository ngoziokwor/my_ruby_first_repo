Given(/^I am logged in as a valid user$/) do
  home_page.visit_logon_page
  home_page.login_with_valid_data
end

When(/^I select orders via sales$/) do
  order_page.click_orders_via_sales
end


Then(/^I should be able to process customers orders\.$/) do
  process_order_page.process_customers_orders
end