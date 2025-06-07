*** Settings ***
Resource        ../../base.resource

*** Variables ***
${FULLNAME}
${EMAIL_TEST}
${CATEGORY}

*** Keywords ***
Fakers
#FakerName
    ${FULLNAME}=             FakerLibrary.Name
    Set Test Variable        ${FULLNAME}

#FakerEmail
    ${randomWord}           Generate Random String      length=6    chars=[LETTERS]
    ${randomWord}           Convert To Lower Case       ${randomWord}
    Set Test Variable       ${EMAIL_TEST}               ${randomWord}@qa.com

#FakerCategory
    ${randomWord}           Generate Random String      length=5    chars=[LETTERS]
    ${randomWord}           Convert To Upper Case       ${randomWord}
    Set Test Variable       ${CATEGORY}                 ${randomWord} 