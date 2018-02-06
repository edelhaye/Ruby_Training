# Load libraries for Selenium Webdriver and unit tests
require "selenium-webdriver"
require "test/unit"

class Scenario2 < Test::Unit::TestCase
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
        search_box.send_keys "blouse"

        search_button = @driver.find_element(css: 'button.button-search[name=submit_search]')
        search_button.click

        # Print how many results
        element = @driver.find_element(css: '.heading-counter')
        puts element.text
        assert_equals(1, element.text.to_i)

        # Grab the More button
        more_button = @wait.until {
            @driver.find_element(css: 'a.button[title=View]>span')
        }
        more_button.click
        
        # Print the value of the "Styles" property in the datasheet
        # Verify that it is in new condition
    end
end
