*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser
Test Setup        Run Keywords    Fakers    AND    Access register page

*** Test Cases ***
Register as manager
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  gestao
    Submit the register form
    Verify that the message                ${MSG_SUCCESS_REGISTER}

Register as salon
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message                ${MSG_SUCCESS_REGISTER}

Register without surname
    Fill in the registration form          Maria             ${EMAIL_TEST}        ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_NAME_SURNAME_REQUIRED}

Register without name
    Fill in the registration form          Mendes            ${EMAIL_TEST}        ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_NAME_SURNAME_REQUIRED}

Register with blank name
    Fill in the registration form          ${EMPTY}          ${EMAIL_TEST}        ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_NAME_REQUIRED}

Register with invalid email
    Fill in the registration form          ${FULLNAME}       teste@com            ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_EMAIL_INVALID}

Register with blank email
    Fill in the registration form          ${FULLNAME}       ${EMPTY}             ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_EMAIL_REQUIRED}

Register with 7 character password
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        Teste1@            Teste1@ 
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PASSWORD_RULES}

Register with 13 character password
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        Teste1234567@      Teste1234567@
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PASSWORD_RULES}

Register without capital letters
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        teste12345@        teste12345@ 
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PASSWORD_RULES}

Register without lowercase letters
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        TESTE12345@        TESTE12345@ 
    Select the option  salao
    Submit the register form
    Verify that the message                ${MSG_ERROR_GENERIC_REGISTER}

Register without special characters
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        teste12345         teste12345
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PASSWORD_RULES}

Register without numbers
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        Testando@          Testando@
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PASSWORD_RULES}

Register different passwords
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        ${PASSWORD}        Testando@
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PASSWORD_MISMATCH}

Register without selecting user profile
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        ${PASSWORD}        ${CONFIRM_PASSWORD}
    Submit the register form
    Verify that the message error          ${MSG_ERROR_PROFILE_REQUIRED}
    
Register with blank password
    Fill in the registration form          ${FULLNAME}       ${EMPTY}             ${PASSWORD}        ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_EMAIL_REQUIRED}

Register with blank confirm password
    Fill in the registration form          ${FULLNAME}       ${EMAIL_TEST}        ${PASSWORD}        ${EMPTY}
    Select the option  salao
    Submit the register form
    Verify that the message error          ${MSG_ERROR_CONFIRM_PASSWORD}