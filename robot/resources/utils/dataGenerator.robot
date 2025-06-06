*** Settings ***
Resource        ../../base.resource

*** Variables ***
${FULLNAME}
${EMAIL_TEST}

*** Keywords ***
Fakers
#FakerName
    ${FULLNAME}=             FakerLibrary.Name
    Set Test Variable        ${FULLNAME}

#FakerEmail
    ${randomWord}           Generate Random String      length=6    chars=[LETTERS]
    ${randomWord}           Convert To Lower Case       ${randomWord}
    Set Test Variable       ${EMAIL_TEST}               ${randomWord}@qa.com