*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Access the login screen
    Go To    ${URL}
    
Fill in the login form
    [Arguments]        ${email}                 ${password}
    fill               ${INPUT_EMAIL}           ${email}
    fill               ${INPUT_PASSWORD}        ${password}

Submit the login form
    click              ${BTN_ENTER}

Verify that the following success message
    [Arguments]      ${msgSuccess}
    ${txt}           getMessage      ${ALERT_TOAST}
    Should Be Equal As Strings       ${txt}            ${msgSuccess}
    
Verify that the following error message
    [Arguments]      ${msgError}
    ${txt}           getMessage      ${ALERT_TOAST}    
    Should Be Equal As Strings       ${txt}            ${msgError}

Verify that the following required message
    [Arguments]      ${msgRequired}
    ${txt}           getMessage        ${ALERT_REQUIRED}    
    Should Be Equal As Strings         ${txt}            ${msgRequired}

Check page title
    [Arguments]      ${titleExpected}
    ${title}         getMessage        ${TITLE_LOGIN}    
    Should Be Equal As Strings         ${title}            ${titleExpected}