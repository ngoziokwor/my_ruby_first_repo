class LandingPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end


  def verify_valid_login
    begin
      @browser.page_source.include?("Admin")
      @log.info("Verified Valid login")
    rescue Exception => e
      @browser.save_screenshot('reports/screen_shots_reports/verify_valid_login.jpeg')
      @log.error("Error occurred at the verify method")
      @log.debug(e)
    end
  end




end