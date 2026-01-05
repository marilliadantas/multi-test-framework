*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Access the login screen
    Go To                    ${URL}
    
Fill in the login form
    [Arguments]              ${email}                 ${password}
    Fill Field               ${INPUT_EMAIL}           ${email}
    Fill Field               ${INPUT_PASSWORD}        ${password}

Submit the login form
    Click On Button          ${BTN_ENTER}

Verify that the following success message
    [Arguments]              ${msgSuccess}
    Assert Text              ${ALERT_TOAST}           ${msgSuccess}
    
Verify that the following error message
    [Arguments]              ${msgError}
    Assert Text              ${ALERT_TOAST}           ${msgError}

Verify that the following required message
    [Arguments]              ${msgRequired}
    Assert Text              ${ALERT_REQUIRED}        ${msgRequired}

Validate login page title
    [Arguments]              ${expectedLoginPageTitle}
    Assert Text              ${TITLE_LOGIN}           ${expectedLoginPageTitle}