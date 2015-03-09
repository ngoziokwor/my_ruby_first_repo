class HomePage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end


  def visit_logon_page
    begin
    @browser.goto(FigNewton.base_url)
    @log.info("Browser is opened and web address entered")
    rescue Exception => e
      @log.error(e)
    end
  end


  def login_with_valid_data
    begin
      @browser.text_field(:id => 'Email').send_keys(FigNewton.valid_username)
      @log.info("Username is entered")
      @browser.text_field(:id => 'Password').send_keys(FigNewton.valid_password)
      @log.info("Password is entered correctly")
      @browser.button(:xpath => 'html/body/div[1]/div/div/div/div/div[2]/div[1]/div/div[2]/form/div[5]/input').click
      @log.info("Login button is clicked and system signed in properly")
    rescue Exception => e
      @log.warn(e)
      @browser.screenshot.save("reports/screen_shots_reports/login_with_valid_data.jpeg")
      @log.info("Screenshot was taken when error occurred")
      end
  end
    

end