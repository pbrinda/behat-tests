  Scenario: Check Reloading of the Page
  	Given I am on the homepage
    Then the url should match "/"
    When I reload the page
    Then the url should match "/"
