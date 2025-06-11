*** Settings ***
Resource           ../main.robot
Test Setup         Start session
Test Teardown      Close session

*** Test Cases ***
CT01 - Successful login
    [Tags]   SuccessfulLogin
    Given I am on the login page
    When I enter valid credentials
    And I click on the Login button
    Then I should be redirected to the products page

CT02 - Unsuccessful login with wrong credentials
    [Tags]    WrongCredentials
    Given I am on the login page
    When I enter invalid credentials
    And I click on the Login button
    Then I should see an error message for invalid credentials

CT03 - Unsuccessful login with missing email
    [Tags]    MissingEmail
    Given I am on the login page
    When I enter only the password
    And I click on the Login button
    Then I should see an error message for missing email

CT04 - Unsuccessful login with missing password
    [Tags]    MissingPassword
    Given I am on the login page
    When I enter only the email
    And I click on the Login button
    Then I should see an error message for missing password

CT05 - Unsuccessful login with no credentials
    [Tags]    noCredentials
    Given I am on the login page
    And I click on the Login button
    Then I should see an error message for missing credentials