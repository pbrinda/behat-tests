# features/aboutus.feature
 
Feature: As a visitor I should be able to load About Us page successfully
	Scenario: About Us page loads successfully
		Given I am on "/about-us"
		# Check for down arrow button on page
		Then ".mb-hero-tocontent .navbutton" element should be visible
		Then I wait 3 sec
		Then I should see "WHO WE ARE"
		Then I should see "WHAT WE BELIEVE"
		Then I should see "See Our Brands"
		Then I wait 3 sec
		# Scroll to footer menu at the bottom of the page
		When I scroll "menu-main-menu-1" into view
		Then I wait 3 sec
		# Check for up arrow button at the bottom of the page
		Then ".mb-page-totop .navbutton" element should be visible
		# Check for See Our Brands button at the bottom of the page
		When I click element ".mb-button"
		Then the url should match "/our-brands/"

		


