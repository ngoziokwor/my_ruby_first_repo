class AddCartPage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end

  def click_add_cart
    begin
      @browser.find_element(:id => "opener_call_request_6").click
      @log.info("Added item to cart via buy now with 1 click")
    rescue Exception => e
      @log.error("Error occured and managed by Exceptions")
      @browser.save_screenshots(reports/screenshots_repository/click_add_cart.jpeg)
      @log.info("Screenshot taken to capture error at add to cart page")
    end
  end

  def add_item(item)
    begin
      @browser.page_source.include?(item)
      @log.info("Verified item exist")
      @browser.find_element(:xpath => "//*[@id='det_img_245']").click
      @log.info("Clicked item to cart")
      @browser.find_element(:id => "button_cart_245").click
      sleep(15)

    rescue Exception => e

    end


  end





end