*** Settings ***
Resource        ../../base.resource

*** Variables ***
${DEFAULT_TIMEOUT}    10s

*** Keywords ***
Wait For Element
    [Arguments]                      ${element}        ${timeout}=${DEFAULT_TIMEOUT}
    Wait Until Element Is Visible    ${element}        ${timeout}
    Wait Until Element Is Enabled    ${element}

Fill Field
    [Arguments]                      ${element}        ${text}
    Wait For Element                 ${element}
    Input Text                       ${element}        ${text}

Click On Element
    [Arguments]                      ${element}
    Wait For Element                 ${element}
    Click Element                    ${element}

Click On Button
    [Arguments]                      ${element}
    Wait For Element                 ${element}
    Click Button                     ${element}

Click By Index
    [Arguments]                      ${locator}         ${index}
    Wait For Element                 ${locator}
    @{elements}    Get WebElements   ${locator}
    Click Element                    ${elements}[${index}]
    
Get Text From Element
    [Arguments]                      ${element}
    Wait For Element                 ${element}
    ${text}                          Get Text           ${element}
    RETURN                           ${text}

Get Text By Index
    [Arguments]    ${locator}        ${index}
    @{elements}     Get WebElements  ${locator}
    ${text}         Get Text         ${elements}[${index}]
    RETURN          ${text}

Assert Text
    [Arguments]    ${element}        ${expectedTitle}
    ${title}       Get Text From Element                 ${element}
    Should Be Equal As Strings       ${title}            ${expectedTitle}

Wait Text
    [Arguments]    ${element}        ${expectedTitle}    ${timeout}=${DEFAULT_TIMEOUT}
    Wait Until Keyword Succeeds      ${timeout}          500ms
    ...    Element Text Should Be    ${element}          ${expectedTitle}
