class CustomerPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end


  def select_customer
    begin
    @browser.span(:xpath => "//*[@id='admin-menu']/li[4]/span/span").click
    sleep(10)
    @log.info("Clicking to select customers")
    @log.info("Sleep is called")
    @browser.link(:xpath => "//*[@id='admin-menu']/li[4]/div/ul/li[1]/a").click
    sleep(10)

    rescue Exception => e
      @log.error("Error occurred and managed by Exceptions")
      @log.debug(e)
      @browser.screenshot.save("reports/screen_shots_reports/customer_page.jpeg")
      end
  end



  def verify_new_customer
    begin
      @browser.text.include?("Denis")
      @log.info("New Customer added")
    rescue Exception => e
      @log.debug(e)
    end

  end



end