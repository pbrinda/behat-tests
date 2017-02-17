# features/homepage.feature

Feature: As a visitor I should be able to load the Home Page and also able to visit all Menu Links

  Scenario: home page loads successfully              
    Given I am on the homepage
    Then the url should match "/"
    Then the response status code should be 200

  Scenario: Check Reloading of the Page
  	Given I am on the homepage
    Then the url should match "/"
    When I reload the page
    Then the url should match "/"
