*** Settings ***
Resource           ../main.robot
Suite Setup        Start session
Suite Teardown     Close session

Test Setup         Login

*** Test Cases ***
CT01 - Purchase successfully
    [Tags]   purchaseSuccessfully
    Given the user is on the checkout page
    When the user clicks on "Place to order"
    Then the order should be successfully completed