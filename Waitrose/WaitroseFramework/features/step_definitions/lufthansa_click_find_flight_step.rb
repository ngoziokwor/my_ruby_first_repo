Given(/^that I am authenticated user$/) do
  @browser.span(:xpath => "//*[@id='user-btn']/a/span[2]").click
  @browser.text_field(:id => "login-userdata-username").send_keys"johnhill123"
  @browser.text_field(:id => "login-userdata-password").send_keys"password123"
  @browser.button(:id => "login-layer-btn").click
end

When(/^I click on find flight$/) do
  @browser.a(:xpath => "//*[@id='header-mainmenu-item-10415']/a").click
end


Then(/^I should see travel search\.$/) do
  puts @browser.text.eql?'Travel search'
  #@browser.html.include?('Travel search').should == true
 #expect(@browser.text.include?'Travel search').to be true
end






























