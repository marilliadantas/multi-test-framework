*** Settings ***
Resource        ../../base.resource

*** Keywords ***
waitElement
    [Arguments]                      ${elements}       ${time}
    Wait Until Element Is Visible    ${elements}       ${time}

fill
    [Arguments]                      ${element}        ${text}
    waitElement                      ${element}        10s
    Input Text                       ${element}        ${text}

click
    [Arguments]                      ${element}
    waitElement                      ${element}        10s
    Click Button                     ${element}

clickText
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}
    Wait Until Element Is Enabled    ${element}
    Click Element                    ${element}

getMessage
    [Arguments]                      ${element}        
    waitElement                      ${element}        10s
    ${text}=                         Get Text          ${element}
    RETURN                           ${text} 