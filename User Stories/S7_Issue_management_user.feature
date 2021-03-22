Feature: Issue management (user)
  As a user
  So that I can correct or change the issues I have submitted
  I want to manage an issue I have submitted and has “pending” status

Scenario: open the issue management page
  Given I see a non-empty list of issues I have submitted and have “pending” status
  When I press an issue
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
  Then I return to my pending issues page

Scenario: Successful editing
  Given I am in the issue management page
  And I have edited some fields of the issue
  And all the fields are valid
  When I press “Save”
  Then I return to my pending issues page
  And the issue is edited
  And I see a message “Issue was edited”

Scenario: Unsuccessful editing
  Given I am in the issue management page
  And I have edited a field of the issue
  When I press the “Save” button
  But the field is empty or has invalid content
  Then the field turns red
  And next to it I see a message “Please fill in this field with a valid value”
  And next to it I see a hint of the validation criteria
  And I can continue editing the issue

Scenario: Cancel editing
  Given I am in the issue management page
  When I press “Cancel”
  Then the issue is not changed
  And I return to my pending issues page
