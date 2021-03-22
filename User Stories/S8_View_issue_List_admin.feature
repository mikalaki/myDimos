Feature: View issue list (admin)
  As an admin
  So that I can track and manage the problems of my municipality
  I want to see a list of all issues

Scenario: The system contains issues
  Given I am logged in
  And the system contains issues
  When I go to my home page
  Then I see a list with every issue with the details
  | Title | ‘chuckhole’ | Max 80 chars |
  | Status | [‘Pending’, ‘Published’, ‘Solved’]| |
  | Votes | 341 | |
  | Description | ‘A big chuckhole is on the right side of the road’ | Max 500 chars |
  | Category | ‘Road map issue’ | Drop down list |
  | Address | ‘Tsimiski 39’ | Can be inputted by GPS |
  | Media | Image' ||
  And I see the number of issues

Scenario: The system contains no issues
  Given I am logged in
  And the system doesn’t contain any issue
  When I go to my home page
  Then I see a message “No issues exist” in the list’s place
