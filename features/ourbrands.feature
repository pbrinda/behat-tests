# features/ourbrands.feature
 
Feature: As a visitor I should be able to load Our Brands page successfully
	Scenario: Our Brands page loads successfully
		Given I am on "/our-brands"
		Then ".navbutton" element should be visible
		When I click element ".navbutton"
		Then I wait 1 sec
		Then "//div[2]/div[6]/div[2]/div/div/div[1]/div/div/h2" element with xpath contains value "UM"
		Then "//div[2]/div[6]/div[2]/div/div/div[2]/div[1]/div/div/h2" element with xpath contains value "Initiative"
		Then "//div[2]/div[6]/div[2]/div/div/div[2]/div[2]/div[1]/div/div/h2" element with xpath contains value "BPN"
		Then "//div[2]/div[6]/div[2]/div/div/div[2]/div[2]/div[2]/div[1]/div/div/h2" element with xpath contains value "Cadreon"
		Then I wait 2 sec
		When I click element ".mb-button"
		Then I wait 1 sec
		Then the url should match "/our-people/"

		


	