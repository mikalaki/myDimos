Feature: View my pending issues
  As a user
  So that I can revise my pending issues
  I want to view a list of all the pending issues I have submitted


Scenario: I have pending issues
  Given I am in my home page
  And the systems contains issues I submitted before and have “pending” status
  When I press the “My pending issues” button
  Then I see a list of all the issues I have submitted and have “pending” status

Scenario: I have no pending issues
  Given I am in my home page
  And the systems doesn’t contain issues I submitted before and have “pending” status
  When I press the “My pending issues” button
  Then I see a message “No pending issues” in the place of the list.

Scenario: Leave my pending issues page
  Given I am in my pending issues page
  When I press “Back”
  Then I go to my home page
