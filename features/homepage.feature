# features/homepage.feature

Feature: As a visitor I should be able to load the Home Page and also able to visit all Menu Links

	Scenario: home page loads successfully
		Given I am on the homepage
		Then the url should match "/"
		Then the page title should be "Home - IPG Mediabrands"
		# Check for IPG Mediabrands logo on page
		Then ".mb-home-logo" element should be visible
		# Open side menu
		When I click element "div.mb-menu-open"
		Then I wait 3 sec
		# Check for IPG Mediabrands logo on side menu
		Then ".mb-menu-logo" element should be visible
		# Close side menu
		When I click element "div.mb-menu-close"
		Then I wait 3 sec
		# Check for down arrow button on page
		Then ".mb-hero-tocontent .navbutton" element should be visible
		# Check Slide 3
		When I click element "div#mb-slidemarker3.mb-slidemarker"
		Then I wait 3 sec
		Then I should see "DYNAMIC BY DESIGN."
		# Check Slide 4
		When I click element "div#mb-slidemarker4.mb-slidemarker"
		Then I wait 3 sec
		Then I should see "We make it happen."
		# Check for Learn More About us button at the bottom of the page
		When I click element "div.mb-home-exit.dark > a.mb-button"
		Then the url should match "/about-us/"
		Then I wait 3 sec


