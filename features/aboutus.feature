# features/aboutus.feature
 
Feature: As a visitor I should be able to load About Us page successfully
	Scenario: About Us page loads successfully
		Given I am on "/about-us"
		Then ".navbutton" element should be visible
		When I click on ".navbutton"
		Then I should see "description of company"
		


