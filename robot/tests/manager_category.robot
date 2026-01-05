*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser
Test Setup        Login

*** Test Cases ***
Delete product successfully
    Click register     menu
    Click on delete product
    Verify that the success message        ${ALERT_TOAST_DELETE}