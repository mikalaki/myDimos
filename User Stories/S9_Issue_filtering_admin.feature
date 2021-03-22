Feature: Issue filtering (admin)
  As an admin
  So that I can concentrate on managing a subset of issues
  I want to filter the issues in my list

Scenario: Search by string
  Given I see a list of issues
  When I press the “magnifying glass” icon
  And I have inputted a string in the search box
  Then the search string filter is added
  And the list is updated

Scenario: There are issues matching my filters
  Given I am in my home page
  When I add an extra or remove a search filter:
  | Category | ‘Road map issues’ | checkbox |
  | Status | [‘Pending’, ‘Published’, ‘Solved’] | checkbox |
  | Submitted from | 23/11/2019 | date selection calendar |
  | Submitted until | 15/2/2020 | date selection calendar |
  | Address | ‘Tsimiski 39’ ||
  | Search string | ‘Traffic light’ | |
  And there are issues matching my new filters
  Then I see a list of issues matching my new filters
  And I see the number of the issues

Scenario: No issues match the filters
  Given I am in my home page
  When I add an extra or remove a search filter
  And no issues match my new filters
  Then I see a message “No issues found” in the list’s place

Scenario: Remove every filter
  Given I am in my home page
  When I press the “Clear filters” button
  Then I see a list of all issues
  And I see the number of the issues
