class LandingPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end

   def verify_login
     begin
      @browser.text.include?("Logout?")
      @log.info("Verified that Logout TEXT EXIST")
     rescue Exception => e
      @log.error(e)
      @browser.screenshot.save("reports/screen_shots_reports/verify_login.jpeg")
      @log.info("The error screenshot was taken and stored")
     end
   end



end



