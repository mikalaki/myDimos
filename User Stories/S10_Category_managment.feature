Feature: Category managment
  As an admin
  So that I adjust the system to my municipality’s needs
  I want to manage a category

Scenario: Go to the category management page
  Given I am in my home page
  When I press “Manage categories”
  Then I go to the category management page

Scenario: Create a category
  Given I am in the category management page
  When I press “New Category”
  Given I give a unique name for the new category
  Then I return to the updated category management page
  And I see a message “Category created”

Scenario: Edit an existing category
  Given I am in the category management page
  And I have selected a category
  When I press “Edit” Button
  Given I give a unique name for the new category
  Then I return to the updated category management page
  And I see a message “Category edited”

Scenario: Duplicate name
  Given I am creating a new or editing an existing category
  But I give a non-unique name
  Then I see a message “This name already exists”
  And I can give another name.

Scenario: Delete a category
  Given I am in the category management page
  And I have selected a category
  When I press “Delete”
  Then I see a dialog “Are you sure you want to delete the category <category name>? Every issue of this category will then belong the “Other” category.
  And I have the choice of confirming or aborting the deletion

Scenario: Confirm deletion
  Given I am at the category deletion confirmation dialog
  When I press “Yes”
  Then the category is deleted
  And I return to the category management page
  And I see a message “Category deleted”
  And every issue of that category belongs to the “Other” category.

Scenario: Abort deletion
  Given I see the deletion confirmation dialog
  When I press “No”
  Then I return to the category management page
