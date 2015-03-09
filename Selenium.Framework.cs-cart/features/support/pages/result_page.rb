class ResultPage
  def initialize(log, browser)
    @log = log
    @browser = browser
  end

  def verify_result(result1, result2)
    begin
      @browser.page_source.include?(result1)
      @log.info('verified that Item exist')
      @browser.page_source.include?(result2)
      @log.info("verified that valid amount exist")
      sleep(2)
      @log.info("Sleep was called")
    rescue Exception => e
      @log.debug(e)
      @log.error("Error occurred at the verify result page")
      @browser.save_screenshot(reprts/screenshots_repository/verify_result.jpeg)
      @log.info("Screenshot was taken")
    end
  end


  def verify_item_added(item)
    wait = Selenium::WebDriver::Wait.new(:timeout => 120000)
    open_dock = @browser.find_element(:xpath => "//*[@id='sw_dropdown_5']/a/i[2]")

    #wait.until{
    #  open_dock.displayed?
    #  @log.info("Waited for it")
    #}
    sleep(4)
    if open_dock.displayed?.eql? true
      open_dock.click
      sleep(5)
      @log.info("Dock opened for checking carting")
      @browser.page_source.include?(item)

    else
      @log.error("Error occurred")
    end
  end







end
