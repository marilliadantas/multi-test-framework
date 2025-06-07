*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Click On Register Category Menu
    clickText    ${BTN_CATEGORY}

Fill Category Name
    [Arguments]        ${nameCategory}
    fill               ${INPUT_NAME_CATEGORY}       ${nameCategory}

Click On Register
    click    ${BTN_REGISTER_CATEGORY}

Validate Success Message
    [Arguments]      ${msgSuccess}
    click            ${CLOSE_MSG}
    ${txt}           getMessage      ${ALERT_TOAST_REGISTER}
    Should Be Equal As Strings       ${txt}            ${msgSuccess}