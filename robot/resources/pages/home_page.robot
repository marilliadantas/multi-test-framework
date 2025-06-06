*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Click logout
    click        ${CLOSE_MSG}
    clickText    ${BTN_LOGOUT}