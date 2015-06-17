class LandingPage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end


  def verify_login(message)
    begin
      @browser.page_source.include?(message)
      @log.info("Verified that "+ message +" exist on the page")
    rescue Exception => e
      @log.debug(e)
      @browser.save_screenshot("reports/screenshots_repository/verify_welcome_message.jpeg")
      @log.info("Screenshot was taken successfully")
    end
  end




end