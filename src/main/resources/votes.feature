Feature: List votes

  Background:
    Given x-api-key and baseURI are already acquired.

  @votes
  Scenario Outline: Creating vote and Check vote
    When I check number of votes for this "<sub_id>"
    Then I see numbers
    When I will create a vote for "<sub_id>" with this "<image_id>"
    Then I have numbers one more votes for "<sub_id>" should be contain this "<image_id>"
    Examples:
      | sub_id       | image_id  |
      | my-user-1234 | NXPv27lGs |