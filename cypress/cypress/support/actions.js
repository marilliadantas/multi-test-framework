export function waitElement(el) {
  return cy.get(el, { timeout: 10000}).should("be.visible")
}

export function set(el, text, option) {
  waitElement(el);
  cy.get(el).clear().type(text, option)
}

export function click(el) {
  waitElement(el);
  cy.get(el, { timeout: 10000 }).click()
}

export function getText(el, expectedText) {
  waitElement(el);
  cy.get(el, { timeout: 50000 })
    .invoke('text')
    .should('equal', expectedText)
}

export function getMessages(el, expectedMessages) {
  cy.get(el).each(($el, index) => {
      cy.wrap($el)
        .should('be.visible')
        .invoke('text')
        .should('equal', expectedMessages[index])
    })
}