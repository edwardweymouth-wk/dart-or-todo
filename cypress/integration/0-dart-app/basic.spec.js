/// <reference types="cypress" />

describe('example to-do app', () => {
    beforeEach(() => {
      cy.visit('/')
    })
  
    it('displays two todo items by default', () => {
      cy.get('.todo-list li').should('have.length', 2)
    })

  })
  