import { login } from "../elements/login";
import { click, set, getText, getMessages } from '../actions'

const fillField = (field, value) => {
    if (value !== '') {
        click(field)
        set(field, value, { log: false, delay: 20 })
    }
}

export default {
    fillLoginFields(email, password) {
        fillField(login.inputEmail, email)
        fillField(login.inputPassword, password)
    },

    submitLogin() {
        click(login.btnSubmit)
    },

    verifyAlertError(expectedTxt) {
        getText(login.toastAlertError, expectedTxt)
    },

    verifyAlertRequired(expectedTxt) {
        getText(login.alertRequired, expectedTxt)
    },

    verifyAlertsErrors(messages) {
    getMessages(login.alertRequired, messages);
    },

    verifyTitle(title) {
        getText(login.titleLogin, title)
    }
}