*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser
Test Setup        Login

*** Test Cases ***
Register Category Successfully
    Fakers
    Click On Register Category Menu
    Fill Category Name                 ${CATEGORY}
    Click On Register
    Validate Success Message           Categoria cadastrada com sucesso!