class NewsLetterPage


  def initialize(browser, log)
    @browser = browser
    @log = log
  end


  def select_newsletter_via_promotions
    @browser.span(:xpath => "//*[@id='admin-menu']/li[5]/span").hover
    @browser.link(:name => "Newsletter Subscribers").click
  end




  end