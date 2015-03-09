class ResultPage



  def initialize(browser)
    @browser = browser
  end

  def verify_result(result)
    @browser.text.include?(result)
  end



end

