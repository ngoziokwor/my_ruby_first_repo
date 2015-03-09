module WorldHelper


  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def initialize_browser
    @browser = Selenium::WebDriver.for :chrome
    #@browser = Watir::Browser.new :chrome
    @browser.manage.window.maximize
    #@browser.driver.manage.window.maximize  # Watir WebDriver Command
    file = File.open("reports/log_reports/execution_logs.log", "a")
    @log ||= Logger.new(file)
  end


  def quit_browser
    @browser.quit
  end

  def home_page
    @home_page ||= HomePage.new(@browser, @log)
  end


  def landing_page
    @landing_page ||= LandingPage.new(@browser, @log)
  end





end

