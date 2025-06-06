*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Access register page
   Go To    ${URL}/${REGISTER}
   
Fill in the registration form
    [Arguments]        ${name}        ${email}        ${password}        ${confirm_password}
    fill         ${INPUT_NAME}                        ${name}
    fill         ${INPUT_EMAIL_REGISTER}              ${email}
    fill         ${INPUT_PASSWORD_REGISTER}           ${password}
    fill         ${INPUT_CONFIRM_PASSWORD}            ${confirm_password}

Select the ${option}
    [Arguments]     ${value}
    ${locator}=     Set Variable      ${BASE_SELECTOR}
    ${locator}=     Replace String    ${locator}     {value}     ${value}
    clickText       ${locator}

Submit the register form
    click    ${BTN_REGISTER}

Verify that the message
    [Arguments]      ${expectedMsg}
    ${text}     getMessage        ${ALERT_TOAST_REGISTER}     
    Should Be Equal As Strings    ${text}        ${expectedMsg}

Verify that the message error
    [Arguments]      ${expectedMsg}
    ${text}     getMessage        ${ALERT_NAME}     
    Should Be Equal As Strings    ${text}        ${expectedMsg}