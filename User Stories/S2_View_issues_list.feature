Feature: View issues list (user)
  As a user
  So that I can track the problems of my municipality
  I want to see a list of all published issues

Scenario: The system contains published issues
  Given I am logged in
  And the system contains published issues
  When I go to my home page
  Then I see a list with every published issue with the details
  | Title | ‘chuckhole’ | Max 80 chars |
  | Status | [‘Pending’, ‘Published’, ‘Solved’]| |
  | Votes | 341 | |
  | Category | ‘Road map issue’ | Drop down list |
  | Address | ‘Tsimiski 39’ | Can be inputted by GPS |
  |  Distance from user | 3.7km | Only visible if GPS is enabled |
  And I see the number of published issues

Scenario: The system contains no published issues
  Given I am logged in
  And the system doesn’t contain any published issue
  When I go to my home page
  Then I see a text “No issues exist” in the list’s place
