import login from "../support/pages/loginPage"
import home from "../support/pages/homePage"

describe('Home', () => {
  beforeEach(() => {
    cy.login()
  })

  it('Logout with success', () => {
    home.logOut()
    login.verifyTitle('Faça seu login')
  })
})