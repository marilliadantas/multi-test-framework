import { register } from "../elements/register";
import { click, set, checkOption, getText, getMessages } from "../actions";

export default {
  fillRegisterFields(name, email, password, confirmPass) {
    if (name !== null) {
      click(register.inputName);
      set(register.inputName, name, { log: false, delay: 15 });
    }

    if (email !== null) {
      click(register.inputEmail);
      set(register.inputEmail, email, { log: false, delay: 15 });
    }

    if (password !== null) {
      click(register.inputPass);
      set(register.inputPass, password, { log: false, delay: 15 });
    }

    if (confirmPass !== null) {
      click(register.inputConfirmPass);
      set(register.inputConfirmPass, confirmPass, { log: false, delay: 15 });
    }
  },

  selectOptionByValue(optionValue) {
    const optionMap = {
      gestao: register.radioManager,
      salao: register.radioSalon,
    }

    const option = optionMap[optionValue]

    if (!option) {
      throw new Error(`Opção inválida: ${optionValue}`)
    }

    checkOption(option)
  },

  registerAccount() {
    click(register.btnRegister)
  },

  verifyAlert(expectedTxt) {
    getText(register.toastSignupSuccess, expectedTxt)
  },

  verifyAlertError(expectedTxt) {
    getText(register.toastRegisterRequired, expectedTxt)
  },

  verifyAlertsErrors(messages) {
    getMessages(register.toastRegisterRequired, messages)
  },
}