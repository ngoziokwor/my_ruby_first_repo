Given(/^I am a valid user$/) do
  @browser.span(:xpath=>"//*[@id='user-btn']/a/span[2]").click
  @browser.text_field(:id=>"login-userdata-username").send_keys"johnhill123"
  @browser.text_field(:id=>"login-userdata-password").send_keys"password123"
  @browser.button(:id=>"login-layer-btn").click
end

When(/^I click find flight$/) do
  @browser.a(:xpath => "//*[@id='header-mainmenu-item-10415']/a").click
end

And(/^I select on one way$/) do
  @browser.radio(:id => "f-triptypeOneway").set
end

Then(/^I should also be able to select on round trip$/) do
  @browser.radio(:id => "f-triptypeRoundtrip").set
end