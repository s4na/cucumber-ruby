Feature: Outlines
  In order to re-use scenario table values
  As a citizen of Cucumbia
  I want to explicitly mark the parameters in a scenario outline

  Scenario Outline: controlling order
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

  Examples:
    | left  | start  | eat  |
    |  7    |  12    |  5   |
    |  15   |  20    |  5   |
    
  Scenario Outline: reusing place holder
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers
    And I should have <eat> cucumbers in my belly

  Examples:
    | start  | eat  | left |
    |  12    |  5   |  7   |
    |  20    |  5   |  15  |
  
  Scenario Outline: no placeholders
    Given there are 12 cucumbers
    When I eat 5 cucumbers
    Then I should have 7 cucumbers

  Examples:
    | start  | eat  | left |
    |  12    |  5   |  7   |
    |  20    |  5   |  15  |
  
  Scenario Outline: using '<' and '>' not as placeholder
    Given the belly space is < 12 and > 6
    And there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

  Examples:
    | start  | eat  | left |
    |  12    |  5   |  7   |
    |  20    |  5   |  15  |