*** Variables ***
${INPUT_NAME}           xpath=(//android.widget.EditText[@content-desc="Full Name* input field"])
${INPUT_ADDRESS}        xpath=(//android.widget.EditText[@content-desc="Address Line 1* input field"])
${INPUT_ADDRESS_2}      xpath=(//android.widget.EditText[@content-desc="Address Line 2 input field"])
${INPUT_CITY}           xpath=(//android.widget.EditText[@content-desc="City* input field"])
${INPUT_STATE}          xpath=(//android.widget.EditText[@content-desc="State/Region input field"])
${INPUT_ZIP_CODE}       xpath=(//android.widget.EditText[@content-desc="Zip Code* input field"])
${INPUT_COUNTRY}        xpath=(//android.widget.EditText[@content-desc="Country* input field"])
${BTN_PAYMENT}          xpath=(//android.view.ViewGroup[@content-desc="To Payment button"])
${INPUT_FULLNAME}       xpath=(//android.widget.EditText[@content-desc="Full Name* input field"])
${INPUT_CARD}           accessibility_id=Card Number* input field
${INPUT_EXPIRATION}     xpath=(//android.widget.EditText[@content-desc="Expiration Date* input field"])
${INPUT_CODE}           xpath=(//android.widget.EditText[@content-desc="Security Code* input field"])
${BTN_REVIEW_ORDER}     accessibility_id=Review Order button
${BTN_PLACE_ORDER}      xpath=(//android.view.ViewGroup[@content-desc="Place Order button"])
${TITLE_ORDER}          xpath=(//android.widget.TextView[@text="Thank you for your order"])