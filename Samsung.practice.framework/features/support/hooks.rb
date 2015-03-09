

Before do
    @browser = Watir::Browser.new :firefox
    @browser.driver.manage.window.maximize
    @browser.goto(FigNewton.base_url)

    @home_page = HomePage.new(@browser)
end


After do
  @browser.quit
end