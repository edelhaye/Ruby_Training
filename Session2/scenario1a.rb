# Load the Ruby library for Selenium Webdriver
require "selenium-webdriver"

# Load the driver
driver = Selenium::WebDriver.for :chrome

# Visit the site
driver.navigate.to "http://automationpractice.com/index.php"

# Locate the search box and search something
search_box = driver.find_element(id: 'search_query_top')
search_box.send_keys "dress"
search_box.submit

# Print how many results
element = driver.find_element(css: '.heading-counter')
puts element.text

sleep 5 # For demo

# That's all folks!
driver.quit
