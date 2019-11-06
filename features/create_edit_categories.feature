Feature: Create Categories
  As a blog administrator
  In order to share my thoughts to the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Zoo"
    And I fill in "category_keywords" with "animal"
    And I fill in "category_permalink" with "hellokitty_link"
    And I fill in "category_description" with "This is a beautiful cat"
    And I press "Save"
    Then I should see "Zoo"
    Then I should see "animal"
    Then I should see "hellokitty_link"
    Then I should see "This is a beautiful cat"

    Then I follow "Zoo"


    When I fill in "category_name" with "Another_Zoo"
    And I fill in "category_keywords" with "another_animal"
    And I fill in "category_permalink" with "Another_hellokitty_link"
    And I fill in "category_description" with "This a another beautiful cat"
    And I press "Save"
    Then I should see "Another_Zoo"
    Then I should see "another_animal"
    Then I should see "Another_hellokitty_link"
    Then I should see "This a another beautiful cat"