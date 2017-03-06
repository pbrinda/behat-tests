# features/contactus.feature
 
Feature: As a visitor I should be able to load Careers page successfully

	Scenario: Careers page loads successfully
		Given I am on "/careers"
		Then I should see the page down key
		When I click on page down key
		Then I should see "description on talent career"
		When I scroll down
		Then I should see "the link to career portal"


