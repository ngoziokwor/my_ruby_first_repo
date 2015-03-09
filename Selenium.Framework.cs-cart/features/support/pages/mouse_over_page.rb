class MouseOverPage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end

  def select_electronics
    electronics = @browser.find_element(:xpath => "//*[@id='tygh_main_container']/div[2]/div/div[2]/div/div/ul/li[2]/a[2]")
    #laptop = @browser.find_element(:xpath => "//*[@id='topmenu_6_0172b9306c3e85394cb02cca5dd4b276']/ul/li[1]/div[2]/ul/li[2]/a")
    htc = @browser.find_element(:xpath => "//*[@id='topmenu_6_0172b9306c3e85394cb02cca5dd4b276']/ul/li[4]/div[2]/ul/li[2]/a")
    sleep(5)
    @browser.action.move_to(electronics).click(htc).perform
    sleep(5)
  end

end