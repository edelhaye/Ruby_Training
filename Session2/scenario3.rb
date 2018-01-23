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
search_box.send_keys "printed summer dress"

search_button = driver.find_element(css: 'button.button-search[name=submit_search]')
search_button.click

# Grab the More button
more_button = driver.find_element(css: 'a.button[title=View]>span')
more_button.click

# Grab the [+] button and add two dresses
plus_button = driver.find_element(css: 'a.product_quantity_up')
2.times { plus_button.click }

# Add to cart
add_to_cart = driver.find_element(css: 'p#add_to_cart button[name=Submit]')
add_to_cart.click

# Pausing the Ruby script here to show the last page in the browser.
# Don't let your real scripts sleep unnecessarily.
sleep 10

# That's all folks!
driver.quit
