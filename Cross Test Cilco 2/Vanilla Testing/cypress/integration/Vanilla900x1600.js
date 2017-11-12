describe('Vanilla Login', function() {
    it('Vanilla Post it ok', function() {
	cy.viewport(900, 1600) 
        cy.visit('http://34.239.0.77/vanilla/entry/signin?Target=discussions')
        cy.get('#Form_User_SignIn').find('input[id="Form_Email"]').click().type("misotest2017")
        cy.get('#Form_User_SignIn').find('input[id="Form_Password"]').click().type("12345678")
	cy.get('#Form_User_SignIn').find('input[id="Form_SignIn"]').click()
	cy.get('#Panel').find('a[class="Button Primary Action NewDiscussion BigButton"]').click()
        cy.get('#Content').find('input[id="Form_Name"]').click().type("Prueba")
        cy.get('#Content').find('textarea[id="Form_Body"]').click().type("Prueba")
	cy.get('#Content').find('input[id="Form_PostDiscussion"]').click()

    })
})
