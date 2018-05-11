# Load libraries for Selenium Webdriver and unit tests
require "selenium-webdriver"
require "test/unit"

class Scenario1b < Test::Unit::TestCase
    def setup
        @driver = Selenium::WebDriver.for :chrome
    end
    
    def teardown
        @driver.quit
    end
    
    def test_the_thing
        # Visit the site
        @driver.navigate.to "http://automationpractice.com/index.php"

        # Locate the search box and search something
        search_box = @driver.find_element(id: 'search_query_top')
        search_box.send_keys "dress"
        search_box.submit

        # Print how many results
        element = @driver.find_element(css: '.heading-counter')
        puts element.text
        assert_equal(7, element.text.to_i)

        sleep 5 # For demo
    end
end
