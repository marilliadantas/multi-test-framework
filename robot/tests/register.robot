*** Settings ***
Resource          ../base.resource
Suite Setup       Start Browser
Suite Teardown    Finish Browser
Test Setup        Fakers

*** Test Cases ***
Register as manager
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  gestao
    Submit the register form
    Verify that the message                Cadastro realizado com sucesso!

Register as salon
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message                Cadastro realizado com sucesso!

Register without surname
    Access register page
    Fill in the registration form          Maria   ${EMAIL_TEST}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          Preencha com nome e sobrenome.

Register without name
    Access register page
    Fill in the registration form          Mendes   ${EMAIL_TEST}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          Preencha com nome e sobrenome.

Register with blank name
    Access register page
    Fill in the registration form          ${EMPTY}   ${EMAIL_TEST}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          O campo de nome é obrigatório.

Register with invalid email
    Access register page
    Fill in the registration form          ${FULLNAME}   teste@com    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          Por favor, insira um e-mail válido.

Register with blank email
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMPTY}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          O campo de e-mail é obrigatório.

Register with 7 character password
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    Teste1@    Teste1@ 
    Select the option  salao
    Submit the register form
    Verify that the message error          A senha deve conter entre 8 e 12 caracteres, incluindo ao menos uma letra maiúscula, um número e um caractere especial.

Register with 13 character password
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    Teste1234567@    Teste1234567@
    Select the option  salao
    Submit the register form
    Verify that the message error          A senha deve conter entre 8 e 12 caracteres, incluindo ao menos uma letra maiúscula, um número e um caractere especial.

Register without capital letters
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    teste12345@    teste12345@ 
    Select the option  salao
    Submit the register form
    Verify that the message error          A senha deve conter entre 8 e 12 caracteres, incluindo ao menos uma letra maiúscula, um número e um caractere especial.

Register without lowercase letters
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    TESTE12345@    TESTE12345@ 
    Select the option  salao
    Submit the register form
    Verify that the message                Erro ao realizar cadastro. Tente novamente.

Register without special characters
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    teste12345    teste12345
    Select the option  salao
    Submit the register form
    Verify that the message error          A senha deve conter entre 8 e 12 caracteres, incluindo ao menos uma letra maiúscula, um número e um caractere especial.

Register without numbers
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    Testando@    Testando@
    Select the option  salao
    Submit the register form
    Verify that the message error          A senha deve conter entre 8 e 12 caracteres, incluindo ao menos uma letra maiúscula, um número e um caractere especial.

Register different passwords
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    ${PASSWORD}    Testando@
    Select the option  salao
    Submit the register form
    Verify that the message error          As senhas não coincidem.

Register without selecting user profile
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Submit the register form
    Verify that the message error          Por favor, selecione o perfil.
    
Register with blank password
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMPTY}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Select the option  salao
    Submit the register form
    Verify that the message error          O campo de e-mail é obrigatório.

Register with blank confirm password
    Access register page
    Fill in the registration form          ${FULLNAME}   ${EMAIL_TEST}    ${PASSWORD}    ${EMPTY}
    Select the option  salao
    Submit the register form
    Verify that the message error          Confirme sua senha.