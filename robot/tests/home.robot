*** Settings ***
Resource            ../base.resource

Suite Setup         Start Browser
Suite Teardown      Finish Browser
Test Setup          Login

*** Test Cases ***
Validate access to Category creation page
    Click register    category
    Validate Category Page Title                    ${CATEGORY_PAGE_TITLE}

Validate access to Product creation page
    Click register    product
    Validate product creation page title            ${REGISTER_MENU_PAGE_TITLE}

Validate access to Product management page
    Click register    menu
    Validate menu creation page title               ${MANAGER_CATEGORY_PAGE_TITLE}

Logout successful
    Click logout
    Validate login page title                       ${LOGIN_PAGE_TITLE}