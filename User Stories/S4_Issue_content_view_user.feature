Feature:
  As a user
  So that I learn more about a specific issue
  I want to view the full information associated with an issue

Scenario: Open the content view page
  Given I see a list of issues
  When I press an issue
  Then the content view page opens
  And I can see the full information of an issue

Scenario: close the content view page
  Given I am in content view
  When I press the “Back” button
  Then the content view page closes
  And I return to the previous issue list
  
