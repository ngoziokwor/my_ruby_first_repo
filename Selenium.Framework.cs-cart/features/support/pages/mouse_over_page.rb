class MouseOverPage

  def initialize(log, browser)
    @log = log
    @browser = browser
  end

  def select_electronics


    electronics = @browser.find_element(:xpath => "//*[@id='tygh_main_container']/div[2]/div/div[2]/div/div/ul/li[2]/a[2]")
    htc = @browser.find_element(:xpath => "//*[@id='topmenu_6_0172b9306c3e85394cb02cca5dd4b276']/ul/li[4]/div[2]/ul/li[2]/a")
    sleep(10)
    @browser.action.move_to(electronics).click(htc).perform
    sleep(10)
  end

  def select_sports_and_outdoors
    begin
      sports = @browser.find_element(:xpath => "//*[@id='tygh_main_container']/div[2]/div/div[2]/div/div/ul/li[3]/a[2]")
      @log.info("Sports and outdoors selected")
      bikes = @browser.find_element(:xpath => "//*[@id='topmenu_6_5b660f27024de32d54af5e21af24a6fc']/ul/li[1]/div[2]/ul/li[2]/a")
      @log.info("Road bikes selected")
      sleep(10)
      @log.info("Sleep called")
      @browser.action.move_to(sports).click(bikes).perform
      @log.info("Mouse over action on sports and road bikes")
      sleep(10)
      @log.info("Sleep called")


    end


  end

end