Feature: Issue management (admin)
  As an admin
  So that I can manage the problems of my municipality
  I want to manage an issue

Scenario: open the issue management page
  Given I see a non-empty list of issues
  When I press the “Edit” button on an issue
  Then the issue management page opens

Scenario: Delete an issue
  Given I am in the issue management page
  When I press “Delete issue”
  Then I see a dialog “Are you sure you want to delete the issue?”
  And I am offered the choice to confirm deletion or not

Scenario: Confirm deletion
  Given I see the deletion confirmation dialog
  When I press “Yes”
  Then I return to my pending issues page
  And the issue is deleted
  And I see a message “Issue was deleted”

Scenario: Abort deletion
  Given I see the deletion confirmation dialog
  When I press “No”
  Then I return to the issue management page

Scenario: Successful editing
  Given I am in the issue management page
  And I have edited some fields of the issue
  And there are no blank or invalid fields
  When I press “Save”
  Then I see my previous issue list
  And the issue is edited
  And I see a message “Issue was edited”

Scenario: Unsuccessful editing
  Given I am in the issue management page
  And I have edited a field of the issue
  But the field is empty or has invalid content
  When I press the “Save” button
  Then the field turns red
  And next to it I see a message “Please fill in this field with a valid value”
  And next to it I see a hint of the validation criteria
  And I can continue editing the issue

Scenario: Cancel editing
  Given I am in the issue management page
  When I press “Cancel”
  Then The issue is not changed
  And I see my previous issue list
