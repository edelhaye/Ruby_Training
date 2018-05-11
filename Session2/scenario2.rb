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
        assert_equal(1, element.text.to_i)

        # Grab the More button
        more_button = @wait.until {
            @driver.find_element(css: 'a.button[title=View]')
        }
        more_button.click
              
        # Print the value of the "Styles" property in the datasheet
        data_sheet_trs = @driver.find_elements(css: 'section.page-product-box table.table-data-sheet tbody tr')
        
        data_sheet_trs.each do |tr|
            tds = tr.find_elements(css: 'td')
            key = tds[0].text
            value = tds[1].text
            puts "#{key} --> #{value}"
            if (key == 'Styles')
                puts 'Found it!'
            end
        end
        
        # Verify that it is in new condition
        condition = @driver.find_element(css: 'p#product_condition span.editable')
        assert_equal('New', condition.text)
        
        sleep 5 # For demo
    end
end
