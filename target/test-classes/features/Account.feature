#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#@tag
#Feature: Title of your feature
#  I want to use this template for my feature file

#  @tag1
#  Scenario: Title of your scenario
#    Given I want to write a step with precondition
#    And some other precondition
#    When I complete action
#    And some other action
#    And yet another action
#    Then I validate the outcomes
#    And check more outcomes

#  @tag2
#  Scenario Outline: Title of your scenario outline
#    Given I want to write a step with <name>
#    When I check for the <value> in step
#    Then I verify the <status> in step

#    Examples: 
#      | name  | value | status  |
#      | name1 |     5 | success |
#      | name2 |     7 | Fail    |

Feature: Portal Login

Background:
Given Validate the Browser
When Browser is triggered
Then check if browser is started

@PortalTest
Scenario:  Homepage default login
Given User is on Netbanking landing page
When User login into application with "jin" and password "1234"
Then Home page is populated
And Cards displayed are "true" 

@PortalTest
Scenario:  Homepage default login
Given User is on Netbanking landing page
When User login into application with "john" and password "4321"
Then Home page is populated
And Cards displayed are "false" 

@PortalTest
Scenario:  Homepage default login
Given User is on Netbanking landing page
When User login into application with "john" and password "4321"
Then Home page is populated
And Cards displayed are "false" 

@PortalTest
Scenario:  Homepage default login
Given User is on Netbanking landing page
When User sign up with following details
| jenny | abcd | john@abcd.com | Australia | 2365538 |
Then Home page is populated
And Cards displayed are "false"

Scenario Outline:  Homepage default login   #use Scenario Outline for parameterization
Given User is on Netbanking landing page
When User login in to application with <Username> and password <password>
Then Home page is populated
And Cards displayed are "true"


Examples: 
|Username |password|
|user1		|pass1   |
|user2		|pass2   |
|user3		|pass3   |
|user4		|pass4   |