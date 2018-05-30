# Load libraries for Selenium Webdriver and unit tests
require "selenium-webdriver"
require "test/unit"

class Scenario5 < Test::Unit::TestCase
    def setup
        @driver = Selenium::WebDriver.for :chrome

        # Prepare a wait function
        @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    end
    
    def teardown
        @driver.quit
    end
        
    def test_the_thing
        # Visit the site
        @driver.navigate.to "http://automationpractice.com/index.php"
        
        # Locate the search box and search something
        search_box = @driver.find_element(id: 'search_query_top')
        search_box.send_keys "printed summer dress"

        # Add to cart
        @driver.find_element(css: "a[title='Add to cart']").click

        # Click on "YourLogo - a new experience"
        @driver.find_element(css: "a[title='My Store']").click
        
        # Click on the cart icon
        @driver.find_element(css: "a[title='View my shopping cart']").click

        # Click on any of the items you previously added to the cart
        @driver.find_element(css: 'table#cart_summary tr.first_item td.cart_product').click

        # Print the description of this item
        description = @driver.find_element(css: 'div#short_description_content')
        puts "The description is '#{description.text}'"

        # Send this item to a friend
        @driver.find_element(css: 'a#send_friend_button').click
        @driver.find_element(css: 'input#friend_name').send_keys "Tony"
        @driver.find_element(css: 'input#friend_email').send_keys "tony@example.com"
        @driver.find_element(css: 'button#sendEmail').click
        
        sleep 5 # For demo
    end
end
