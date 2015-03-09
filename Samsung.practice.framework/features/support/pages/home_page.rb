class HomePage

  def initialize(browser)
     @browser = browser
   end

  def visit_logon
    puts("This is Given or visit logon")
  end

  def logon_with_valid_credentials
    @browser.text_field(:id => 'inputUserID').send_keys(FigNewton.valid_login_username)
    @browser.text_field(:id => "inputPasswordPlaceholder").send_keys(FigNewton.valid_login_password)
    @browser.button(:xpath => "//*[@id='signInForm']/fieldset/button").click
  end

  def logon_with_invalid_credentials
    @browser.text_field(:id => 'inputUserID').send_keys(FigNewton.invalid_login_username)
    @browser.text_field(:id => "inputPasswordPlaceholder").send_keys(FigNewton.invalid_login_password)
    @browser.button(:xpath => "//*[@id='signInForm']/fieldset/button").click
  end


  def verify_logon(username)
    username = @browser.div(:xpath => "//*[@id='content']/div[2]/div[2]/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/p")
    username.text.include?("John")
    #if (username.eql?("John Hill"))
    #  @browser.text.include?(username)
    #elsif(username.eql?("Incorrect ID or password"))
    #  @browser.text.include?(username)
    #end
  end

end