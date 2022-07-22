Feature: Upgenix calendar feature
  User Story:
  As a PosManager, I should be able to create and to see my meetings and events on my calendar from "Calendar" module.

  Background: For the scenarios in the feature file, user is expected to be on the home page
    Given user is on the Upgenix home page

  @BRT-367
  Scenario: Verify that user first lands on weekly display
    When user clicks to the "Calendar" button
    Then user first land on a weekly display

  @BRT-368
  Scenario: Verify that user can change display between Day-Week-Month
    When user clicks to the "Calendar" button
    And user can change display between Day-Week-Month

  @BRT-369
  Scenario: Verify that user can create event by clicking on time box
    When user clicks to the "Calendar" button
    And user clicks to the "Month" button
    And user clicks on time box "2022-07-05"
    And user writes the event to the "Summary" input box.
    And user clicks to the "Create" button
    Then user can see the created event on the calendar widget

  @BRT-370
  Scenario: Verify that user can not edit a created event if deletes the event name
  Negative edit a created event scenario

    When user clicks to the "Calendar" button
    And user clicks to the "Month" button
    And user clicks existing event that created before
    And user clicks to the "Edit" button
    And user deletes event name
    And user clicks to the "Save" button
    Then user should be able to see the notice message as expected "The following fields are invalid:"

