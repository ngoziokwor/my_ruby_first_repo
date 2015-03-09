Given(/^that I am valid user$/) do
  @browser.span(:xpath=>"//*[@id='user-btn']/a/span[2]").click
  @browser.text_field(:id=>"login-userdata-username").send_keys"johnhill123"
  @browser.text_field(:id=>"login-userdata-password").send_keys"password123"
  @browser.button(:id=>"login-layer-btn").click
end

When(/^I am on find flight$/) do
  @browser.a(:xpath => "//*[@id='header-mainmenu-item-10415']/a").click
end

Then(/^I should be able to select number of adult\(s\)$/) do
  @browser.select_list(:xpath => "//*[@id='adults']/tbody/tr/td[2]/input").select("2 Adults")
end


                                                                      And(/^the number of children$/) do
                                     pending
                                   end


                                                                      And(/^also the number of infants$/) do
                                     pending
                                   end