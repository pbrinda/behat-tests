# features/contactus.feature
 
Feature: As a visitor I should be able to load News page successfully

	Scenario: News page loads successfully
		Given I am on "/news"
		Then I should see the page down key
		When I click on page down key
		Then I should see "the latest news updates"
		


