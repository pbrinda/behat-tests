# features/ourbrands.feature
 
Feature: As a visitor I should be able to load Our Brands page successfully

	Scenario: Our Brands page loads successfully
		Given I am on "/our-brands"
		Then I should see the page down key
		When I click on page down key
		Then I should see "different agencies"
		When I hover on the agency 
		Then I should see "the link to the website of particular agency"

		


