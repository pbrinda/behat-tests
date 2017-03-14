# features/ourbrands.feature
 
Feature: As a visitor I should be able to load Our Brands page successfully
	Scenario: Our Brands page loads successfully
		Given I am on "/our-brands"
		# Check for down arrow button on page
		Then ".mb-hero-tocontent .navbutton" element should be visible
		Then I wait 3 sec
		Then "//div[2]/div[6]/div[2]/div/div/div[1]/div/div/h2" element with xpath contains value "UM"
		Then "//div[2]/div[6]/div[2]/div/div/div[2]/div[1]/div/div/h2" element with xpath contains value "Initiative"
		Then "//div[2]/div[6]/div[2]/div/div/div[2]/div[2]/div[1]/div/div/h2" element with xpath contains value "BPN"
		Then "//div[2]/div[6]/div[2]/div/div/div[2]/div[2]/div[2]/div[1]/div/div/h2" element with xpath contains value "Cadreon"
		Then I wait 2 sec
		# Scroll to footer menu at the bottom of the page
		When I scroll "menu-main-menu-1" into view
		Then I wait 3 sec
		# Check for up arrow button at the bottom of the page
		Then ".mb-page-totop .navbutton" element should be visible
		# Check for See Our People button at the bottom of the page
		When I click element ".mb-button"
		Then I wait 1 sec
		Then the url should match "/our-people/"

		


	