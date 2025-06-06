*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser

*** Test Cases ***
Login with valid credentials
    Access the login screen
    Fill in the login form                                 ${EMAIL}               ${PASSWORD}
    Submit the login form
    Verify that the following success message              Login realizado com sucesso!

Login with invalid email
    Access the login screen
    Fill in the login form                                 ${INVALID_EMAIL_}      ${PASSWORD}
    Submit the login form
    Verify that the following error message                Credenciais inválidas. Verifique seu e-mail e senha.

Login with invalid password
    Access the login screen
    Fill in the login form                                 ${EMAIL}              ${INVALID_PASSWORD}
    Submit the login form
    Verify that the following error message                Credenciais inválidas. Verifique seu e-mail e senha.

Login with blank e-mail
    Access the login screen
    Fill in the login form                                 ${EMPTY}             ${PASSWORD}
    Submit the login form
    Verify that the following required message             O campo de e-mail é obrigatório.

Login with blank password
    Access the login screen
    Fill in the login form                                 ${EMAIL}             ${EMPTY}
    Submit the login form
    Verify that the following required message             O campo de senha é obrigatório.