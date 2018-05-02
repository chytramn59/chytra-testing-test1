@User_signup_and_logout
Feature: As a end user
I should be able open singup page 
and I should able create the new user and signup succesfully.

@smoke
Scenario: trying to singup with valid credentials
Given I am on doctalk home page
When I enter all the vaild details
Then I should see "Signed up Successfully!"

@signout
Scenario: logging out of the appliaction
Given I am on dashboard page
When I click on signout button
Then I should see message "Logged Out Successfully!"