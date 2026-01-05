*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser
Test Setup        Access the login screen

*** Test Cases ***
Login with valid credentials
    Fill in the login form                                 ${EMAIL}                  ${PASSWORD}
    Submit the login form
    Verify that the following success message              ${LOGIN_SUCCESS_MESSAGE}

Login with invalid email
    Fill in the login form                                 ${INVALID_EMAIL}         ${PASSWORD}
    Submit the login form
    Verify that the following error message                ${INVALID_CREDENTIALS_MESSAGE}

Login with invalid password
    Fill in the login form                                 ${EMAIL}                  ${INVALID_PASSWORD}
    Submit the login form
    Verify that the following error message                ${INVALID_CREDENTIALS_MESSAGE}

Login with blank e-mail
    Fill in the login form                                 ${EMPTY}                  ${PASSWORD}
    Submit the login form
    Verify that the following required message             ${EMAIL_REQUIRED_MESSAGE}

Login with blank password
    Fill in the login form                                 ${EMAIL}                  ${EMPTY}
    Submit the login form
    Verify that the following required message             ${PASSWORD_REQUIRED_MESSAGE}