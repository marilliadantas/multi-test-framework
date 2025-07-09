import login from "../support/pages/loginPage"
import home from "../support/pages/homePage"
import msgLogin from "../fixtures/messages/login.json"
import msgHome from "../fixtures/messages/home.json"

describe('Login', () => {
  beforeEach(() => {
    cy.accessSite('/')
  })

  it('Login with valid credentials', () => {
    login.fillLoginFields(Cypress.env('EMAIL'), Cypress.env('PASSWORD'))
    login.submitLogin()
    home.verifySuccessMsg(msgHome.success)
  })

  it('Login with invalid email', () => {
    login.fillLoginFields(Cypress.env('EMAIL_INVALID'), Cypress.env('PASSWORD'))
    login.submitLogin()
    login.verifyAlertError(msgLogin.invalidCredentials)
  })

  it('Login with invalid password', () => {
    login.fillLoginFields(Cypress.env('EMAIL'), Cypress.env('PASSWORD_INVALID'))
    login.submitLogin()
    login.verifyAlertError(msgLogin.invalidCredentials)
  })

   it('Login with blank email', () => {
    login.fillLoginFields("", Cypress.env('PASSWORD'))
    login.submitLogin()
    login.verifyAlertRequired(msgLogin.emailRequired)
  })

   it('Login with blank password', () => {
    login.fillLoginFields(Cypress.env('EMAIL'), "")
    login.submitLogin()
    login.verifyAlertRequired(msgLogin.passRequired)
  })

   it('Login with blank fields', () => {
    login.submitLogin()
    login.verifyAlertsErrors([
      msgLogin.emailRequired,
      msgLogin.passRequired
    ])
  })
})