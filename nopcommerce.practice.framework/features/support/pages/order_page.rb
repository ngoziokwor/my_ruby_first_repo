class OrderPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def click_orders_via_sales
    begin
    @browser.span(:xpath => "//*[@id='admin-menu']/li[3]/span/span").click
    @log.info("Sales button was clicked")
    sleep(2)
    @log.info("Sleep was called for two seconds")
    @browser.link(:xpath => "//*[@id='admin-menu']/li[3]/div/ul/li[1]/a").click
    @log.info("click on orders")
    sleep(2)
    @log.info("sleep for two seconds")

    rescue Exception => e
      @log.debug(e)
      @browser.screenshot.save("reports/screen_shots_reports/click_orders_via_sales.jpeg")
      @log.info("Screenshot taken after error occurred!!!")
    end
  end

end