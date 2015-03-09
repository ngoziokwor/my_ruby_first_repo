class HomePage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end



  def visit_home
    begin
      #@browser.goto(FigNewton.base_url)
      #@browser.get(FigNewton.base_url)
      @browser.navigate.to(FigNewton.base_url)
      @log.info("Browser is opened and web address entered")
      @browser.find_element(:xpath => "//*[@id='container']/footer/div[1]/ul/li[1]/a/span").click
      @log.info("Login Link is clicked and opened")
    rescue Exception => e
      @browser.save_screenshot('reports/screen_shots_reports/visit_home.jpeg')
      @log.error("Error occurred at visit_login")
      @log.debug(e)
    end
  end




  def login_with_valid_id
    begin
      @browser.find_element(:id => "email").send_keys(FigNewton.valid_username)
      @log.info("Email entered successfully")
      @browser.find_element(:id => "password").send_keys(FigNewton.valid_password)
      @log.info("Password entered successfully")
      @browser.find_element(:id => "submit").click
      @log.info("System got logon")
    rescue Exception => e
      @browser.save_screenshot('reports/screen_shots_reports/login_with_valid_id.jpeg')
      @log.error("Error occurred at login method")
      @log.debug(e)
    end
  end





end