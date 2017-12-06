Feature: Creating a Character
  
    Scenario: As a DM I want to be able to create a new character
    Given I am on the home page
    When I press "Submit"
    Then I should be on the "Characters" page
    And I should see the "Name" field
    And I should see the "Backround" field