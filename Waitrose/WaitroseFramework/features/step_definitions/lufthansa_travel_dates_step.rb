Given(/^I am Logged in$/) do
  @browser.span(:xpath=>"//*[@id='user-btn']/a/span[2]").click
  @browser.text_field(:id=>"login-userdata-username").send_keys"johnhill123"
  @browser.text_field(:id=>"login-userdata-password").send_keys"password123"
  @browser.button(:id=>"login-layer-btn").click
end

And(/^I select find flight$/) do
  @browser.a(:xpath => "//*[@id='header-mainmenu-item-10415']/a").click
end

 Then(/^I should be able to input departure date$/) do
   @browser.div(:title => "Please enter the departure date.").click
   #@browser.send_keys("{ENTER}")
   @browser.send_keys("{23}")
   sleep 3

   #@browser.span(:xpath => "//*[@id='lh_calendarMatrix_0']/table/tbody/tr[4]/td[5]/span").click



=begin
There is a small icon next to the date field which displays the calendar widget upon clicking it.

   browser.image(:id,"datewidget-trigger").click # Will display the Calendar
   browser.send_keys("{ENTER}") # Will select current date

   If you want to select a future date or previous date

   browser.send_keys("{LEFT}")
   browser.send_keys("{RIGHT}")

   This has been tested using IE only.
=end

                                   end



                                                                      And(/^also input a return date$/) do
                                     pending
                                   end