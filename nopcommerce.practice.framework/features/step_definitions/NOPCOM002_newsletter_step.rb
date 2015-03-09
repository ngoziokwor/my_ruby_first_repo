Given(/^I am logged on as a valid user$/) do
  home_page.visit_logon_page
  home_page.login_with_valid_data
end

When(/^I select Newsletter via promotions$/) do
  news_letter_page.select_newsletter_via_promotions
end

Then(/^I should be able to search with customers email address$/) do
pending
end