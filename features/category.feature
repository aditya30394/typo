Feature: Manage and create Categories
    As a blogger
    I want to be able to create new categories and edit the existing ones

Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"

Scenario: Categories link should be working and displays the category form
    Then I should see "Categories"
    And I should see "Permalink"
    And I should see "Keywords"
    And I should see "Description"

Scenario: Creation of new categories should be allowed
    When I fill in "Name" with "Test Category"
    And I press "Save"
    Then I should see "Test Category"
    And I should see "no articles"

Scenario: Editing of existing categories should be allowed
    When I follow "General"
    Then I fill in "Description" with "test1, test2, test3"
    Then I fill in "Keywords" with "Some Keyword"
    And I press "Save"
    When I follow "General"
    Then I should see "test1, test2, test3"
    Then I should see "Some Keyword"