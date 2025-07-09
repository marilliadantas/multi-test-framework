import login from "../support/pages/loginPage"
import register from "../support/pages/registerPage"
import { generateName, generateEmail } from '../support/utils/generators'
import msgRegister from "../fixtures/messages/register.json"

let name, email;

describe('Register', () => {
  beforeEach(() => {
    email = generateEmail()
    name = generateName()

    cy.accessSite('/')
    login.accessRegister()
  })

  it('Register user management success', () => {
    register.fillRegisterFields(name, email, Cypress.env("PASSWORD"), Cypress.env("PASSWORD"))
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlert(msgRegister.success)
  })

  it('Register user salon success', () => {
    register.fillRegisterFields(name, email, Cypress.env("PASSWORD"), Cypress.env("PASSWORD"))
    register.selectOptionByValue('salao')
    register.registerAccount()
    register.verifyAlert(msgRegister.success)
  })

  it('Register user with empty name', () => {
    register.fillRegisterFields(null, email, Cypress.env("PASSWORD"), Cypress.env("PASSWORD"))
    register.selectOptionByValue('salao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.nameRequired)
  })

  it('Register user with invalid email', () => {
    const invalidEmail = "teste.email.com"

    register.fillRegisterFields(name, invalidEmail, Cypress.env("PASSWORD"), Cypress.env("PASSWORD"))
    register.selectOptionByValue('salao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.invalidEmail)
  })
  
  it('Register user with empty email', () => {
    register.fillRegisterFields(name, null, Cypress.env("PASSWORD"), Cypress.env("PASSWORD"))
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.emailRequired)
  })

  it('Register user with empty password', () => {
    register.fillRegisterFields(name, email, null, Cypress.env("PASSWORD"))
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertsErrors([msgRegister.passRequired, msgRegister.notMatchPassword])
  })

  it('Register user with empty confirm password', () => {
    register.fillRegisterFields(name, email, Cypress.env("PASSWORD"), null)
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.confirmPassRequired)
  })

  it('Register user with password shorter than 8 characters', () => {
    const shortPass = "T1#t"
  
    register.fillRegisterFields(name, email, shortPass, shortPass)
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.invalidPassword)
  })

  it('Register user with password longer than 12 characters', () => {
    const longPass = "Test@123456789"
    register.fillRegisterFields(name, email, longPass, longPass)
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.invalidPassword)
  })

  it('Register user with password missing uppercase letter', () => {
    const noUppercase = "teste@123"
  
    register.fillRegisterFields(name, email, noUppercase, noUppercase)
    register.selectOptionByValue('salao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.invalidPassword)
  })

  it('Register user with password missing number', () => {
    const noNumber = "Teste@abc"
  
    register.fillRegisterFields(name, email, noNumber, noNumber)
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.invalidPassword)
  })

  it('Register user with password missing special character', () => {
    const noSpecialChar = "Teste123"
  
    register.fillRegisterFields(name, email, noSpecialChar, noSpecialChar)
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.invalidPassword)
  })

  it('Register user with mismatched password and confirm password', () => {
    const mismatchPass = "Teste@124"

    register.fillRegisterFields(name, email, Cypress.env("PASSWORD"), mismatchPass)
    register.selectOptionByValue('gestao')
    register.registerAccount()
    register.verifyAlertError(msgRegister.notMatchPassword)
  })

  it('Register user without selecting any user profile', () => {
    register.fillRegisterFields(name, email, Cypress.env("PASSWORD"), Cypress.env("PASSWORD"))
    register.registerAccount()
    register.verifyAlertError(msgRegister.profileUser)
  })

  it('Register user with all fields empty', () => {
    register.registerAccount()
    register.verifyAlertsErrors([
      msgRegister.nameRequired,
      msgRegister.emailRequired,
      msgRegister.passRequired,
      msgRegister.confirmPassRequired,
      msgRegister.profileUser
    ])
  })
})