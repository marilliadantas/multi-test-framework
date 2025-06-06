*** Settings ***
Resource       hooks.resource

*** Variables ***
${EMAIL}                 teste@qa.com
${PASSWORD}              Testando123@
${CONFIRM_PASSWORD}      Testando123@
${INVALID_EMAIL_}        invalidemail@qa.com
${INVALID_PASSWORD}      Senhaerrada123@
${BASE_SELECTOR}         css=input[type="radio"][value="{value}"]