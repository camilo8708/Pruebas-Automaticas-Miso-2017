describe('Dolibarr Login', function() {
    it('autenticación Dolibarr', function() {
        cy.visit('http://52.54.130.109/dolibarr')
        cy.get('.login_table').find('input[id="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        
        cy.get('.tmenucenter').contains('Comercial').click()

        cy.get('.vmenu').find('a.vsmenu').contains('Nuevo presupuesto').click()

        cy.get('.border').find('input[name="ref_client"]').type(123)
        
   
        
        cy.get('.border').find('input[name="re"]').clear()
        cy.get('.border').find('input[name="duree_validite"]').clear()
        cy.get('.border').find('select[name="cond_reglement_id"]').select('3')
        cy.get('.border').find('select[name="mode_reglement_id"]').select('6')
        cy.get('.border').find('select[name="demand_reason_id"]').select('10')
        cy.get('.border').find('select[name="availability_id"]').select('3')
        cy.get('.border').find('select[name="shipping_method_id"]').select('1')
        cy.get('.border').find('button[id="date_livraisonButtonNow"]').click()
        //cy.get('.border').find('input[name="date_livraison"]').contains('04/09/2017')
        cy.get('.border').find('input[name="date_livraison"]').clear().type('04/09/2007')
        cy.get('.border').find('textarea[name="note_public"]').type('Prueba nota publica')
        cy.get('.border').find('textarea[name="note_private"]').type('Prueba nota privada')

        cy.get('.center').contains('Crear borrador').click()
        //cy.get('.border').find('select[id="socid"]').select('5')
        
        //Validación de mensajes de error
        cy.get('.jnotify-message').contains('El campo \'Fecha\' es obligatorio')
        cy.get('.jnotify-message').contains('El campo \'Duración de validez\' es obligatorio')
        cy.get('.jnotify-message').contains('El campo \'Cliente\' es obligatorio')

        //ajuste de las variables obligatorias
        cy.get('.border').find('input[id="s2id_autogen1"]').click({force: true}).type("E")
        cy.get('.select2-results').contains('}}|||| (EMPANADITASCO)').click()
        cy.get('.border').find('input[name="duree_validite"]').clear().type('35')
        cy.get('.border').find('input[name="re"]').clear().type('25/08/1987')

        cy.get('.center').contains('Crear borrador').click()


        
        

    })
})

