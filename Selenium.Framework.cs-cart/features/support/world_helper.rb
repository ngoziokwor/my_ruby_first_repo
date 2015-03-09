module WorldHelper

  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def start_browser
    @browser = Selenium::WebDriver.for :chrome
    @browser.manage.timeouts.implicit_wait = 15
    @browser.manage.window.maximize
    file = File.open("reports/log_report/execution_logs.log", "a")
    @log ||= Logger.new(file)
    @log.info("")
  end

  def quit_browser
    @browser.quit
    @log.info("Browser was closed successfully")
  end


  def home_page
    @home_page ||= HomePage.new(@log, @browser)
  end

  def landing_page
    @landing_page ||= LandingPage.new(@log, @browser)
  end

  def search_page
    @search_page ||= SearchPage.new(@log, @browser)
  end

  def result_page
    @result_page ||= ResultPage.new(@log, @browser)
  end

  def add_cart_page
    @add_cart_page ||= AddCartPage.new(@log, @browser)
  end

  def mouse_over_page
    @mouse_over_page ||= MouseOverPage.new(@log, @browser)
  end





end