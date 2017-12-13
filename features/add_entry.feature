Feature: Character Information
  
    Scenario: As a DM after i generate a character i want to see all the information about it
    Given I am on the index page
    When i click on the "Create a new character?" link
    And I press "Save Character"
    Then i should be on the "Player Notes and Discussion"page
    Then i should see the character "name"
    And I should see the character "Background"
    And I should see the character "Stats"
    And I should see the character "Equipment"
    
    Scenario: As a DM after i generate a character i want to be able to edit it
    Given I am on the index page 
    When i click on the "Create a new character?" link
    And I press "Save Character"
    Then i should be on the "Player Notes and Discussion"page
    When I click on the "Go back!" link
    Then I should be on the "Your characters" page
    When i click on the "Edit" link
    Then I should be on the "Editing Character" page
    
        Scenario: As a DM I want to be able to get to the character creation page
    Given I am on the home page
    When I click on the "Create a new character?" link
    Then I should be on the "Name" page
    And I should see the "Name" field
    And I should see the "Background" field


    Scenario: As a DM I want to be able to update and edit a character
    Given I am on the home page
    When I click on the "Create a new character?" link
    Then I should be on the "Name" page
    And I should see the "Name" field
    And I should see the "Background" field
    When I correctly fill in "Name" form
    And I correctly fill in "Background" form
    When I click on the "Save Character" button
    Then I should be on the "Your name is" page
    When I click on the "Create Comment" button
    Then I should see the "Remove Note" link