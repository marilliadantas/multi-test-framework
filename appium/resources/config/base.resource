*** Settings ***
Resource    ../../main.robot

*** Keywords ***
Start session
    Open Application     ${CONFIG["LOCAL_HOST"]}
    ...                  platformName=Android
    ...                  deviceName=Android Emulator
    ...                  automationName=UIAutomator2
    ...                  app=${EXECDIR}${CONFIG["PATH_APP"]}
    ...                  udid=${CONFIG["UDID"]}
    ...                  autoGrantPermissions=true

Close session
    Close Application

Login
    Given I am on the login page
    When I enter valid credentials
    And I click on the Login button