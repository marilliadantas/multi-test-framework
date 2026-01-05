*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Access register page
   Go To                ${URL}/${REGISTER}
   
Fill in the registration form
    [Arguments]         ${name}                              ${email}                      ${password}           ${confirm_password}
    Fill Field          ${INPUT_NAME}                        ${name}
    Fill Field          ${INPUT_EMAIL_REGISTER}              ${email}
    Fill Field          ${INPUT_PASSWORD_REGISTER}           ${password}
    Fill Field          ${INPUT_CONFIRM_PASSWORD}            ${confirm_password}

Select the ${option}
    [Arguments]         ${value}
    ${locator}          Set Variable                         ${BASE_SELECTOR}
    ${locator}          Replace String                       ${locator}                    {value}              ${value}
    Click On Element    ${locator}

Submit the register form
    Click On Button     ${BTN_REGISTER}

Verify that the message
    [Arguments]         ${expectedMsg}
    Assert Text         ${ALERT_TOAST_REGISTER}             ${expectedMsg}

Verify that the message error
    [Arguments]         ${expectedMsg}
    Assert Text         ${ALERT_NAME}                       ${expectedMsg}