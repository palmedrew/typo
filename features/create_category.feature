Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add new category via admin page
    When I follow "Categories"
    Then I should be on the new category page
    When I fill in "category_name" with "category_test1"
    And I fill in "category_keywords" with "test1"
    And I fill in "category_permalink" with "test1"
    And I fill in "category_description" with "test1"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Category was successfully saved."