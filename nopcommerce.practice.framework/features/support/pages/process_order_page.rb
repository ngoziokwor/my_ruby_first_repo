class ProcessOrderPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def process_customers_orders
    begin
      p = @browser.span(:xpath => "html/body/div[2]/div/div[5]/div/form[1]/table[1]/tbody/tr[1]/td[2]/span/span/span/span")
      p.click
      @log.info("Clicking to open calender")
      sleep(2)
      @log.info("Sleep is called")
      @browser.link(:title => "Saturday, February 21, 2015").click
      @log.info("Calender date is selected")
      sleep(2)
      @log.info("Sleep is called")
      p1 = @browser.text_field(:id => 'EndDate')
      p1.send_keys("2/27/2015")
      @log.info("Second date is selected")
      sleep(0)
      @log.info("Sleep is called")
    rescue  Exception => e
      @log.error(e)
      @log.error("Error occurred and managed by Exceptions")
      @browser.screenshot.save("reports/screen_shots_reports/process_customers_orders.jpeg")
      @log.info("Screenshot has been taken after error occurred")
    end
  end






end