class HomePage
  @browser = nil

  def initialize(browser)
    @browser = browser
  end

  def visit_logon
    @browser.link(:xpath => "//*[@id='gh-content']/div/div/ul/li[2]/a").click
    @browser.link(:xpath => "//*[@id='u_account']/a").click
    @browser.div(:xpath => "//*[@id='unav_sign-in']/a/div").click
  end

  def complete_my_valid_credentials
  @browser.text_field(:id => "login-appleId").send_keys(FigNewton.valid_login_username)
  @browser.text_field(:id => "login-password").send_keys(FigNewton.valid_login_password)
  end

  def sign_on
   @browser.button(:id => "sign-in").click
  end

  def verify_successful_logon
    sleep(10)
    @browser.span(:xpath => "//*[@id='accountName']").text.include?("John")
  end
 end

