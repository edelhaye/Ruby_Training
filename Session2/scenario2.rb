# Load the Ruby library for Selenium Webdriver
require "selenium-webdriver"

# Load the driver
driver = Selenium::WebDriver.for :chrome

# Prepare a wait function
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

# Visit the site
driver.navigate.to "http://automationpractice.com/index.php"

# Locate the search box and search something
search_box = driver.find_element(id: 'search_query_top')
search_box.send_keys "blouse"

search_button = driver.find_element(css: 'button.button-search[name=submit_search]')
search_button.click

# Print how many results
element = driver.find_element(css: '.heading-counter')
puts element.text

# Grab the More button
more_button = wait.until {
    driver.find_element(css: 'a.button[title=View]>span')
}
more_button.click

# Pausing the Ruby script here to show the last page in the browser.
# Don't let your real scripts sleep unnecessarily.
sleep 10

# That's all folks!
driver.quit
