*** Settings ***
Resource    ../../main.robot

*** Keywords ***
waitElement
    [Arguments]                      ${elements}       ${time}
    Wait Until Element Is Visible    ${elements}       ${time}
    
set
    [Arguments]        ${element}        ${text}
    waitElement        ${element}        10s
    Input Text         ${element}        ${text} 

click
    [Arguments]        ${element}
    waitElement        ${element}        10s
    Click Element      ${element}

getMessage
    [Arguments]        ${text}           ${timeout}
    Wait Until Page Contains    ${text}      ${timeout}