Given(/^I am authenticated user$/) do
  @browser.span(:xpath=>"//*[@id='user-btn']/a/span[2]").click
  @browser.text_field(:id=>"login-userdata-username").send_keys"johnhill123"
  @browser.text_field(:id=>"login-userdata-password").send_keys"password123"
  @browser.button(:id=>"login-layer-btn").click
end

When(/^I click find on flight$/) do
  @browser.a(:xpath => "//*[@id='header-mainmenu-item-10415']/a").click
end

Then(/^I should be able to select depart from$/) do
  @browser.text_field(:id => "f-originName0").send_keys('London Heathrow')
  sleep 2
end

And(/^I should also select arrive at$/) do
  @browser.text_field(:id => "f-destinationName0").send_keys('Amsterdam')
  sleep 2
end