# features/contactus.feature
 
Feature: As a visitor I should be able to load Our People page successfully

	Scenario: Our People page loads successfully
		Given I am on "/our-people"
		Then I should see the page down key
		When I click on page down key
		Then I should see "the list of company's network leaders"
		When I hover on leader name/image
		Then I should see "the description of that leader"


