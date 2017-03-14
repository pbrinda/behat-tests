# features/contactus.feature
 
Feature: As a visitor I should be able to load Contact Us page successfully
	Scenario: Contact Us page loads successfully
		Given I am on "/contact-us"
		Given the page title should be "Contact Us - IPG Mediabrands"
		Then ".navbutton" element should be visible
		When I click element ".navbutton"
		Then I wait 3 sec
		Then I should see "Become a Client"
		Then I should see "North America"
		Then I should see "Europe, the Middle East & Africa"
		Then I should see "Asia-Pacific"
		Then I should see "Latin America"
		Then I should see "Press Inquiries"
		Then I wait 3 sec
		When I scroll "menu-main-menu-1" into view
		Then I wait 2 sec
		Then ".mb-page-totop .navbutton" element should be visible
		When I click element ".mb-button"
		Then the url should match "/about-us/"


