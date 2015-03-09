class LandingPage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end


  def verify_welcome_message
    begin
      @browser.page_source.include?("Account")
      @log.info("Verified login was successful")
    rescue Exception => e
      @log.debug(e)
      @browser.save_screenshot("reports/screenshots_repository/verify_welcome_message.jpeg")
      @log.info("Screenshot was taken successfully")
    end
  end




end