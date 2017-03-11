# features/aboutus.feature
 
Feature: As a visitor I should be able to load About Us page successfully
	Scenario: About Us page loads successfully
		Given I am on "/about-us"
		Then ".navbutton" element should be visible
		When I click element ".navbutton"
		Then I wait 2 sec
		Then I should see "WHO WE ARE"
		Then I should see "WHAT WE BELIEVE"
		Then I should see "See Our Brands"
		Then I wait 2 sec
		When I click element ".mb-button"
		Then the url should match "/our-brands/"

		


