class SearchPage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end

  def search_for_item(item)
    begin
      @browser.find_element(:id => "search_input").send_keys(item)
      @log.info("Item was typed correctly on the search button")
      s=@browser.find_element(:xpath => "//*[@id='tygh_main_container']/div[2]/div/div[1]/div[2]/div/div/form/button")
      s.click
      @log.info("The search button was clicked")
    rescue Exception => e
      @log.debug(e)
      @log.debug("Error occurred at the search page")
    end
  end







end