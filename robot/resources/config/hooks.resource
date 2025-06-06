*** Settings ***
Resource             ../../base.resource

*** Keywords ***
Start Browser
    Open Browser       ${URL}        ${config.Browser}    options=${config.Headless}
    Maximize Browser Window
    
Finish Browser
    Capture Page Screenshot
    Close Browser

Login
    Go To        ${URL}
    fill         ${INPUT_EMAIL}           ${EMAIL}
    fill         ${INPUT_PASSWORD}        ${PASSWORD}
    click        ${BTN_ENTER}