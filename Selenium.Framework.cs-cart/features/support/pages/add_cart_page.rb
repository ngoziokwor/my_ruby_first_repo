class AddCartPage

  def initialize(log, browser)
    @log = log
    @browser = browser
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