*** Settings ***
Resource     ../../main.robot

*** Keywords ***
Given I am on the login page
    Wait Until Element Is Visible     ${MENU_BUTTON}     10
    Click Element                     ${MENU_BUTTON}

    Wait Until Element Is Visible     ${LOGIN_BUTTON}     10
    Click Element                     ${LOGIN_BUTTON}