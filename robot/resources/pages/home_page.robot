*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Click logout
    Click On Element           ${CLOSE_MSG}
    Click On Element           ${BTN_LOGOUT}

Click register
    [Arguments]    ${type}
    IF    '${type}' == 'category'
        Click On Element    ${BTN_CATEGORY}
    ELSE IF    '${type}' == 'product'
        Click On Element    ${BTN_MENU}
    ELSE IF    '${type}' == 'menu'
        Click On Element    ${BTN_REGISTER_MENU}
    ELSE
        Fail    Tipo inválido: ${type}
    END