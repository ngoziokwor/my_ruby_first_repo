class HomePage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end

  def visit_home
    begin
      @browser.navigate.to(FigNewton.base_url)
      @log.info("Opened the web app CS-Cart.com")
      @browser.find_element(:xpath => "//*[@id='account_info_links_13']/li[1]/a").click
      @log.info("Sign-in clicked")
    rescue Exception => e
      @browser.save_screenshot("reports/screenshots_repository/visit_home.jpeg")
      @log.error("Error occurred at visit_home")
      @log.debug(e)
    end
  end

  def login_with_valid_data
    begin
      username = @browser.find_element(:id => "login_main_login")
      username.clear
      username.send_keys(FigNewton.valid_username)
      @log.info("Email entered successfully")
      password = @browser.find_element(:id => "psw_main_login")
      password.clear
      password.send_keys(FigNewton.valid_password)
      @log.info("Password entered successfully")
      @browser.find_element(:id => "remember_me_main_login").click
      @log.info("Remember me option ticked")
      @browser.find_element(:xpath => "//*[@id='tygh_main_container']/div[3]/div/div[2]/div[1]/div/div/div/form/div[3]/div[1]/button").click
    rescue Exception => e
      @browser.save_screenshot("reports/screenshots_repository/login_with_valid_data.jpeg")
      @log.info("Screenshot was taken successfully")
      @log.debug(e)
    end



  end




end