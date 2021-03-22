Feature: Issue upvote
  As a user
  So that I can point out the importance of an issue
  I want to upvote an issue

Scenario Outline: Upvoting in list view
  Given I see a list of issues
  And I see an issue that I haven’t upvoted with <old> votes
  When I press the upvote button of the issue
  Then the issue is upvoted by me
  And the issue has <new> votes
  Examples:
  | old | new |
  |  15 |  16 |

Scenario Outline: Cancelling vote in list view
  Given I see a list of issues
  And I see an issue that I have upvoted with <old> votes
  When I press the upvote button of the issue
  Then the issue is not upvoted by me
  And I see the <new> number of votes
  Examples:
  | old | new |
  |  16 |  15 |

Scenario: Upvoting in content view
  Given I have opened the detailed view of an issue
  And I haven’t upvoted the issue
  When I press the upvote button
  Then the issue is upvoted by me
  And I see the new number of votes

Scenario: Cancelling vote in content view
  Given I have opened the detailed view of an issue
  And I have upvoted the issue
  When I press the upvote button
  Then the issue is not upvoted by me
  And I see the new number of votes
