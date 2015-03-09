class AddNewPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def add_new_customer
    begin
      @browser.text_field(:xpath => "Email").send_keys(FigNewton.new_customer_email_address)
      sleep(5)
      @log.info("Sleep called for five seconds")
      @log.info("Email address entered correctly")
      @browser.text_field(:id => "Password").send_keys(FigNewton.new_customer_password)
      @log.info("New customer password entered successfully")
      @browser.radio(:id => "Gender_Male").set
      @log.info("New customer gender selected")


    rescue Exception => e
      @log.error(e)
    end
  end












end