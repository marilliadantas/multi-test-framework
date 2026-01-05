*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Click on delete product
    Click By Index           ${BTN_DELETE}                    0

Verify that the success message
    [Arguments]              ${msgSuccess}
    Wait Text                ${ALERT_SUCCESS}                 ${msgSuccess}

Validate menu creation page title
    [Arguments]              ${expectedTitlePage}
    Wait Text                ${TITLE_CATEGORY}                ${expectedTitlePage}