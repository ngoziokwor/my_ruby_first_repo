Given(/^that I am on the home page$/) do
#@browser.driver.manage.window.maximize
end

When(/^I complete my valid credentials$/) do
@browser.span(:xpath=>"//*[@id='user-btn']/a/span[2]").click
@browser.text_field(:id=>"login-userdata-username").send_keys(FigNewton.valid_login_username)
@browser.text_field(:id=>"login-userdata-password").send_keys(FigNewton.valid_login_password)
end

And(/^I click sign\-on the application$/) do
@browser.button(:id=>"login-layer-btn").click
end

Then(/^I should see a successful message$/) do
expect(@browser.text.include?'john hill').to be true
end