


Before do
  @browser = Watir::Browser.new :firefox
  @browser.driver.manage.window.maximize
  @browser.goto(FigNewton.dev_url)
end


After do
  sleep(1)
  @browser.close
end