# features/news.feature
 
Feature: As a visitor I should be able to load News page successfully
	Scenario: News page loads successfully
		Given I am on "/news"
		Then the page title should be "News - IPG Mediabrands"
		# Check for IPG Mediabrands logo on page
		Then I wait 3 sec
		# Check for down arrow button on page
		Then ".mb-hero-tocontent .navbutton" element should be visible
		Then I should see "Here’s the Latest"
		Then I wait 3 sec
		# Scroll to footer menu at the bottom of the page
		When I scroll "menu-main-menu-1" into view
		Then I wait 3 sec
		# Check for up arrow button at the bottom of the page
		Then ".mb-page-totop .navbutton" element should be visible

