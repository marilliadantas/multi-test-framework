import login from "../support/pages/loginPage"

describe('Register', () => {
  beforeEach(() => {
    cy.accessSite('/')
    login.accessRegister()
  })

  it('Register with success', () => {
    
  })
})