
import login from "../support/pages/loginPage"

Cypress.Commands.add("accessSite", (route) => {
  cy.visit(route)
})

Cypress.Commands.add("verifyUrl", (url) => {
  cy.url().should('include', url)
  cy.verifyUrl('/signup')
})

Cypress.Commands.add("login", () => {
  cy.accessSite('/')
  login.fillLoginFields(Cypress.env('EMAIL'), Cypress.env('PASSWORD'))
  login.submitLogin()
})