*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Validate product creation page title
    [Arguments]        ${expectedTitlePage}
    Wait Text          ${TITLE_CATEGORY}           ${expectedTitlePage}