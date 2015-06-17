Given(/^that a customer is on the home page$/) do
  home_page.visit_home
end


When(/^the customer logs on with username as "(.*?)" and password as "(.*?)"$/) do |username, password|
    home_page.login_with(username, password)
end



Then(/^the customer should see "(.*?)"$/) do |message|
    landing_page.verify_login(message)
end