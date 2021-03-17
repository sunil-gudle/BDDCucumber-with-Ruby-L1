Given(/^I launch the URL$/) do
  $driver.get("https://demo.opencart.com/")
end

Then(/^I click on Register link$/) do
  $driver.link(:xpath=>"//*[@id='top-links']/ul/li[2]/a/span[1]").click
  $driver.link(:xpath=>"//*[@id='top-links']/ul/li[2]/ul/li[1]/a").click
end

Then(/^I fill the details$/) do
  $driver.text_field(:xpath=>"//*[@id='input-firstname']").set("Sunil")
  $driver.text_field(:xpath=>"//*[@id='input-lastname']").set("Gudle")
  $driver.text_field(:xpath=>"//*[@id='input-email']").set("snilg@gmail.com")
  $driver.text_field(:xpath=>"//*[@id='input-telephone']").set("1800564698")
  $driver.text_field(:xpath=>"//*[@id='input-password']").set("Donald@123")
  $driver.text_field(:xpath=>"//*[@id='input-confirm']").set("Donald@123")
end

Then(/^I check the privacy policy link and continue$/) do
  $driver.checkbox(:xpath=>"//*[@id='content']/form/div/div/input[1]").click
  $driver.button(:xpath=>"//*[@id='content']/form/div/div/input[2]").click
end

Then(/^I click on Contact link$/) do
  $driver.link(:xpath=>"//*[@id='content']/p[4]/a").click
end

Then(/^I type the enquiry asking to change the phone number\/address$/) do
  $driver.textarea(:xpath=>"//*[@id='input-enquiry']").set("This is to change of address/phone number")
end

Then(/^I type the code and click Continue$/) do
  $driver.button(:xpath=>"//*[@id='content']/form/div/div/input").click
  $driver.button(:xpath=>"//*[@id='content']/div/div/a").click
end

Then(/^I click on Samsung Galaxy tab$/) do
  $driver.img(:xpath=>"//*[@id='slideshow0']/div/div[4]/a/img").click
end

Then(/^I click on Review tab$/) do
  $driver.link(:xpath=>"//*[@id='content']/div/div[1]/ul[2]/li[2]/a").click
end

Then(/^I fill the details and rate "([^"]*)" and click on Continue\(error scenario\)$/) do |arg|
  $driver.text_field(:xpath=>"//*[@id='input-name']").set("Raymond")
  $driver.textarea(:xpath=>"//*[@id='input-review']").set("This")
  String s = "//*[@id='form-review']/div[5]/div/input["+arg+"]";
  $driver.radio(:xpath=>s).click
  $driver.button(:xpath=>"//*[@id='button-review']").click
end

Then(/^I fill the details and rate "([^"]*)"click on Continue\(success scenario\)$/) do |arg|
  $driver.text_field(:xpath=>"//*[@id='input-name']").set("Raymond")
  $driver.textarea(:xpath=>"//*[@id='input-review']").set("This is to change of address/phone number")
  String s = "//*[@id='form-review']/div[5]/div/input["+arg+"]";
  $driver.radio(:xpath=>s).click
  $driver.button(:xpath=>"//*[@id='button-review']").click
end

Then(/^I click on Add to wish list$/) do
  $driver.button(:xpath=>"//*[@id='content']/div/div[2]/div[1]/button[1]").click
end

Then(/^I close the success ribbon message$/) do
  $driver.button(:xpath=>"//*[@id='product-product']/div[1]/button").click
end

Then(/^I click on Wishlist link$/) do
  $driver.link(:xpath=>"//*[@id='wishlist-total']/i").click
end

Then(/^I click on POUND Sterling$/) do
  $driver.button(:xpath=>"//*[@id='form-currency']/div/button/i").click
  $driver.button(:xpath=>"//*[@id='form-currency']/div/ul/li[2]/button").click
end

Then(/^I retrieve the value and display it$/) do
  String v = $driver.find_element(:xpath=>"//*[@id='content']/div[1]/table/tbody/tr/td[5]/div").text
  puts v
end

Then(/^I click on Euro$/) do
  $driver.button(:xpath=>"//*[@id='form-currency']/div/button/i").click
  $driver.button(:xpath=>"//*[@id='form-currency']/div/ul/li[1]/button").click
end

Then(/^I click on US dollar$/) do
  $driver.button(:xpath=>"//*[@id='form-currency']/div/button/i").click
  $driver.button(:xpath=>"//*[@id='form-currency']/div/ul/li[3]/button").click
end

Then(/^I click on Add to Cart icon$/) do
  $driver.button(:xpath=>"//*[@id='content']/div[1]/table/tbody/tr/td[6]/button").click
end

Then(/^I close the success message on the page$/) do
  $driver.button(:xpath=>"//*[@id='account-wishlist']/div[1]/button").click
end

Then(/^I click on remove icon on the product in my wishlist page$/) do
  $driver.button(:xpath=>"//*[@id='content']/div[1]/table/tbody/tr/td[6]/a/i").click
end

Then(/^I click on continue$/) do
  $driver.button(:xpath=>"//*[@id='content']/div/div/a").click
end

And(/^I logout$/) do
  $driver.link(:xpath=>"//*[@id='column-right']/div/a[13]").click
end

