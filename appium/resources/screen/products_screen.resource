*** Settings ***
Resource     ../../main.robot

*** Keywords ***
Given the user is on the checkout page
    click      ${FIRST_ITEM}
    click      ${ADD_CART_BTN}
    click      ${VIEW_CART}
    click      ${CHECKOUT_BTN}

    set        ${INPUT_NAME}              ${USER_DATA["name"]}
    set        ${INPUT_ADDRESS}           ${USER_DATA["address1"]}
    set        ${INPUT_ADDRESS_2}         ${USER_DATA["address2"]}
    set        ${INPUT_CITY}              ${USER_DATA["city"]}
    set        ${INPUT_STATE}             ${USER_DATA["state"]}
    set        ${INPUT_ZIP_CODE}          ${USER_DATA["zipCode"]}
    set        ${INPUT_COUNTRY}           ${USER_DATA["country"]}
    click      ${BTN_PAYMENT}

    set        ${INPUT_FULLNAME}          ${CARD_DATA["full_name"]}
    set        ${INPUT_CARD}              ${CARD_DATA["card_number"]}
    set        ${INPUT_EXPIRATION}        ${CARD_DATA["date_expiration"]}
    set        ${INPUT_CODE}              ${CARD_DATA["code_security"]}
    
    click      ${BTN_REVIEW_ORDER}

When the user clicks on "Place to order"
    click      ${BTN_PLACE_ORDER}

Then the order should be successfully completed
    getMessage    Thank you for your order    5s