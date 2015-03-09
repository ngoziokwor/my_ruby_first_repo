class SearchPage


  def initialize(browser)
    @browser = browser
  end


  def search_for_item(item)
    @ngozi = @browser.button(:id => 'gh-search-submit')
    if(@ngozi.enabled?)
    @ngozi.click
    @browser.text_field(:id => 'site-search-query').send_keys(item)
    @browser.button(:id => 'gh-search-submit').click
    else
      raise("Adanne Ngozi, Apple has disabled this Web Application")
    end
  end






end


