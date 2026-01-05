*** Settings ***
Resource             ../../base.resource

*** Keywords ***
Start Browser
    Open Browser        ${URL}                    ${config.Browser}             options=${config.Headless}
    Maximize Browser Window
    
Finish Browser
    Run Keyword And Ignore Error    Capture Page Screenshot
    Close Browser

Login
    Go To                ${URL}
    Fill Field           ${INPUT_EMAIL}           ${EMAIL}
    Fill Field           ${INPUT_PASSWORD}        ${PASSWORD}
    Click On Button      ${BTN_ENTER}