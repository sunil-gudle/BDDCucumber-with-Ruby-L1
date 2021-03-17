Then(/^I click on login link$/) do
  $driver.link(:xpath=>"//*[@id='top-links']/ul/li[2]/a/span[1]").click
  $driver.link(:xpath=>"//*[@id='top-links']/ul/li[2]/ul/li[2]/a").click
end

Then(/^I enter details and login$/) do
  $driver.text_field(:xpath=>"//*[@id='input-email']").set("snilg@gmail.com")
  $driver.text_field(:xpath=>"//*[@id='input-password']").set("Donald@123")
  $driver.button(:xpath=>"//*[@id='content']/div/div[2]/div/form/input").click
end

Then(/^I search for keyword apple$/) do
  $driver.text_field(:xpath=>"//*[@id='search']/input").set("apple")
  $driver.button(:xpath=>"//*[@id='search']/span/button").send_keys(:return)
end

Then(/^I search monitors in sub categories$/) do
  $driver.find_element(:xpath=>"//*[@id='content']/div[1]/div[2]/select").click
  $driver.find_element(:xpath=>"//*[@id='content']/div[1]/div[2]/select/option[10]").click
  $driver.checkbox(:xpath=>"//*[@id='content']/div[1]/div[3]/label/input").click
  $driver.button(:xpath=>"//*[@id='button-search']").click
end

Then(/^I click on Phones and PDAs$/) do
  $driver.link(:xpath=>"//*[@id='menu']/div[2]/ul/li[6]/a").click
end

Then(/^I sort the price from high to low$/) do
  $driver.find_element(:xpath=>"//*[@id='input-sort']").click
  $driver.find_element(:xpath=>"//*[@id='input-sort']/option[5]").click
end

Then(/^I click on Add to compare and click on close$/) do
  $driver.find_element(:xpath=>"//*[@id='content']/div[2]/div[1]/div/div[2]/div[2]/button[3]/i").click
  $driver.button(:xpath=>"//*[@id='product-category']/div[1]/button").click
  $driver.find_element(:xpath=>"//*[@id='content']/div[2]/div[2]/div/div[2]/div[2]/button[3]/i").click
  $driver.button(:xpath=>"//*[@id='product-category']/div[1]/button").click
  $driver.find_element(:xpath=>"//*[@id='content']/div[2]/div[3]/div/div[2]/div[2]/button[3]/i").click
  $driver.button(:xpath=>"//*[@id='product-category']/div[1]/button").click
end

Then(/^I click on Product Compare$/) do
  $driver.link(:xpath=>"//*[@id='compare-total']").click
end

Then(/^I click on the first phone link on the Product Compare page$/) do
  $driver.find_element(:xpath=>"//*[@id='content']/table/tbody[1]/tr[1]/td[2]/a/strong").click
end

Then(/^I write the fifth feature in the description page into flat file$/) do
  String n = $driver.find_element(:xpath=>"//*[@id='tab-description']/ul/li[5]").text
  File.write("flat.txt",n)
end

Then(/^I click on Add to cart$/) do
  $driver.button(:xpath=>"//*[@id='button-cart']").click
end

Then(/^I click on Shopping cart in ribbon message$/) do
  $driver.link(:xpath=>"//*[@id='product-product']/div[1]/a[2]").click
end

Then(/^I click on Checkout button$/) do
  $driver.find_element(:xpath=>"//*[@id='content']/div[3]/div[2]/a").click
end

Then(/^I fill the delivery details and reach the payment page$/) do
  $driver.text_field(:xpath=>"//*[@id='input-payment-firstname']").set("Ray")
  $driver.text_field(:xpath=>"//*[@id='input-payment-lastname']").set("Mond")
  $driver.text_field(:xpath=>"//*[@id='input-payment-address-1']").set("abc street")
  $driver.text_field(:xpath=>"//*[@id='input-payment-city']").set("Mexico")
  $driver.text_field(:xpath=>"//*[@id='input-payment-postcode']").set("123456")
  $driver.find_element(:xpath=>"//*[@id='input-payment-zone']").click
  $driver.find_element(:xpath=>"//*[@id='input-payment-zone']/option[4]").click
  $driver.button(:xpath=>"//*[@id='button-payment-address']").click
  $driver.button(:xpath=>"//*[@id='button-shipping-address']").click
  $driver.button(:xpath=>"//*[@id='button-shipping-method']").click
end

Then(/^I check the terms and conditions checkbox and click continue$/) do
  $driver.checkbox(:xpath=>"//*[@id='collapse-payment-method']/div/div[2]/div/input[1]").click
  $driver.button(:xpath=>"//*[@id='button-payment-method']").click
end

Then(/^I click on Confirm Order$/) do
  $driver.button(:xpath=>"//*[@id='button-confirm']").click
end

Then(/^I click on browser back button$/) do
  $driver.back
end

Then(/^I click on Order history from My Account tab$/) do
  $driver.find_element(:xpath=>"//*[@id='top-links']/ul/li[2]/a/i").click
  $driver.find_element(:xpath=>"//*[@id='top-links']/ul/li[2]/ul/li[2]/a").click
end

Then(/^I click on Subscribe to news letters$/) do
  $driver.find_element(:xpath=>"//*[@id='column-right']/div/a[12]").click
end

Then(/^I click on Specials in Extra tab in the footer$/) do
  $driver.find_element(:xpath=>"/html/body/footer/div/div/div[3]/ul/li[4]/a").click
end

Then(/^I click on List and Grid$/) do
  $driver.find_element(:xpath=>"///*[@id='list-view']/i").click
  $driver.find_element(:xpath=>"//*[@id='grid-view']/i").click
end