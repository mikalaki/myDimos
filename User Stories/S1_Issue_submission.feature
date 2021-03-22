Feature: Issue submission
  As a user
  So that my problems are reported to and solved by the municipal authorities
  I want to submit an issue

Scenario: Open the issue submission form
  Given I am in my home page
  When I press the “Submit an issue” button
  Then the issue submission form shows up
  And all the fields are blank

Scenario: Submit an issue
  Given I have filled in all the issue’s details in the submission form
  | Title | ‘chuckhole’ | Max 80 chars |
  | Description | ‘A big chuckhole is on the right side of the road’ | Max 500 chars |
  | Category | ‘Road map issue’ | Drop down list |
  | Address | ‘Tsimiski 39’ | Can be inputted by GPS |
  | Audiovisual material | Photograph or video | Max 100MB size |
  When I press the “Submit” button
  Then I return to my home page

Scenario: Details missing or invalid
  Given I am filling up the submission form
  When I press the “Submit” button
  But a field is empty or has invalid content
  Then the field turns red
  And next to it I see a message “Please fill in this field with a valid value”
  And next to it I see a hint of the validation criteria
  And I can continue filling in the submission form

Scenario: Cancel the submission
  Given I am filling in the submission form
  When I press the cancel button, or I attempt to close the form
  Then I see the message “Do you wish to close the submission form? Your data will be lost”
  And I am offered the choice to resume filling in the form or close the form.

Scenario: Resume filling in the submission form
  Given The leave confirmation dialog has popped up
  When I press “No”
  Then I can continue filling in the submission form

Scenario: Leave the submission form
  Given The leave confirmation dialog has popped up
  When I press “Yes”
  Then I return to my home page
