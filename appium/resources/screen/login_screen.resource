*** Settings ***
Resource     ../../main.robot

*** Keywords ***
When I enter valid credentials
    set          ${EMAIL_INPUT}            ${LOGIN_DATA["userSuccess"]["username"]}
    set          ${PASSWORD_INPUT}         ${LOGIN_DATA["userSuccess"]["password"]}

And I click on the Login button 
    click        ${LOGIN_BTN}

When I enter invalid credentials
    set          ${EMAIL_INPUT}            ${LOGIN_DATA["userFail"]["username"]}
    set          ${PASSWORD_INPUT}         ${LOGIN_DATA["userFail"]["password"]}

When I enter only the password
    set         ${PASSWORD_INPUT}          ${LOGIN_DATA["userSuccess"]["username"]}
    
When I enter only the email
    set         ${EMAIL_INPUT}             ${LOGIN_DATA["userSuccess"]["password"]}

Then I should be redirected to the products page
    getMessage        ${TITLE_PAGES["pageProducts"]}             10

Then I should see an error message for invalid credentials
    getMessage        ${MESSAGES["wrongCredentials"]}            10

Then I should see an error message for missing email
    getMessage        ${MESSAGES["noUsername"]}                  10

Then I should see an error message for missing password
    getMessage        ${MESSAGES["noPassword"]}                  10

Then I should see an error message for missing credentials
    getMessage        ${MESSAGES["noCredentials"]}               10