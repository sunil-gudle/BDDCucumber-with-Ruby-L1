Feature: Registration And Add To Cart
  Scenario Outline: Registration and add to cart
    Given I launch the URL
    Then I click on Register link
    Then I fill the details
    Then I check the privacy policy link and continue
    Then I click on Contact link
    Then I type the enquiry asking to change the phone number/address
    Then I type the code and click Continue
    Then I click on Samsung Galaxy tab
    Then I click on Review tab
    Then I fill the details and rate "<arg1>" and click on Continue(error scenario)
    Then I fill the details and rate "<arg2>"click on Continue(success scenario)
    Then I click on Add to wish list
    Then I close the success ribbon message
    Then I click on Wishlist link
    Then I click on POUND Sterling
    Then I retrieve the value and display it
    Then I click on Euro
    Then I retrieve the value and display it
    Then I click on US dollar
    Then I retrieve the value and display it
    Then I click on Add to Cart icon
    Then I close the success message on the page
    Then I click on remove icon on the product in my wishlist page
    Then I click on continue
    And I logout
    Examples:
      | arg1 | arg2 |
      | 3    |  4   |





