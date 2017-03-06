# features/contactus.feature
 
Feature: As a visitor I should be able to load Contact Us page successfully

	Scenario: Contact Us page loads successfully
		Given I am on "/contact-us"
		Then I should see page down key
		When I click on page down key
		Then I should see "the country list by gergraphical regions"
		When I hover on country region
		Then I should see "the contact information of that region"


