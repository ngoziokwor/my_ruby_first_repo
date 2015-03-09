


Before do
  @browser = Watir::Browser.new :firefox
  @browser.driver.manage.window.maximize
  @browser.goto(FigNewton.base_url)


  @home_page = HomePage.new(@browser)
  @contact_page = ContactPage.new(@browser)
  @search_page = SearchPage.new(@browser)
  @result_page = ResultPage.new(@browser)
end


After do
  @browser.quit
end