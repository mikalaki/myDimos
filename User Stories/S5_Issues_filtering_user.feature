Feature: Issues filtering(user)
  As a user
  So that I can search for specific issues
  I want to filter the issues visible in my list

Scenario: Search by string
    Given I see a list of issues
    And I have inputted a string in the search box
    When I press the “magnifying glass” iconThenthe search string filter is added
    And the list is updated

Scenario: Open the filters page
    Given I am in my home page
    When I press the “filters” icon
    Then I go to the filters page
    And The filters have their previous state
    And I see the same search string as in my home page

Scenario: Change filters
    Given I am in the filters page
    And I have added or removed search filters:
    | Category | ‘Road map issues’ | checkbox |
    | Status | [‘Published’, ‘Solved’] | checkbox |
    |  Distance radius | 2.5km | spinner |
    |  Submitted from | 23/11/2019 | date selection calendar |
    |  Submitted until | 15/2/2020 | dateselection calendar |
    |  Search string | ‘Traffic light’ | |
    When I press “Apply filters”
    Then I return to my home page
    And I see the same search string as in the filters page
    And I see the updated list of issues

Scenario: There are issues matching my filters
    Given I am in my home page
    And there are issues matching my filters
    Then I see a list of issues matching my new filters
    And I see the number of the issues

Scenario: No issues match the filters
    Given I am in my home page
    And no issues match my new filters
    Then I see a message “No issues found” in the list’s place

Scenario: Remove every filter
    Given I am in the filters page
    When I press the “Cancel” button
    Then Every filter is blank
