*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Click On Register Category Menu
    Click On Element   ${BTN_CATEGORY}

Fill Category Name
    [Arguments]        ${nameCategory}
    Fill Field         ${INPUT_NAME_CATEGORY}      ${nameCategory}

Click On Register
    Click On Element   ${BTN_REGISTER_CATEGORY}

Validate Success Message
    [Arguments]        ${msgSuccess}
    Click On Element   ${CLOSE_MSG}
    Assert Text        ${ALERT_TOAST_REGISTER}     ${msgSuccess}

Validate Category Page Title
    [Arguments]        ${expectedCategory}
    Wait Text          ${TITLE_CATEGORY}           ${expectedCategory}