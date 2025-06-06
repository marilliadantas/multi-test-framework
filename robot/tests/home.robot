*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser
Test Setup        Login

*** Test Cases ***
Logout successful
    Click logout
    Check page title        Faça seu login