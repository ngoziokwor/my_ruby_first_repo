module WorldHelper


  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def initialize_browser
    @browser = Watir::Browser.new :chrome
    @browser.driver.manage.window.maximize
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

  def news_letter_page
    @news_letter_page ||= NewsLetterPage.new(@browser, @log)
  end

  def order_page
    @order_page ||= OrderPage.new(@browser, @log)
  end

  def process_order_page
    @process_order_page ||= ProcessOrderPage.new(@browser, @log)
  end

  def customer_page
    @customer_page ||= CustomerPage.new(@browser, @log)
  end

  def new_customer_page
    @new_customer_page ||= AddNewPage.new(@browser, @log)
  end

  def add_new_page
    @add_new_page ||= AddNewPage.new(@browser, @log)
  end



end

