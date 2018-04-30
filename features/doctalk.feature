@signup_new_user
Feature: As a end user
I should be able open singup page 
and I should able create the new user and signup succesfully.


@sign_up
Scenario:new_sign_up
Given I am in doctalk home page
When I click on signup button
Then I should get singup form for new sign-in

@valid_sign_up
Scenario:sign-up
Given I am on singup form
When I enter all the details
Then I should see signup succesfullys

@signout
Scenario:sign-out
Given I am on home page
When I click on signout button
Then I should see signouted succesfully