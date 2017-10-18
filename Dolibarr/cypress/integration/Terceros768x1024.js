describe('Dolibar Login', function() {
    it('Dolibar login ok', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        
    })
})


describe('Dolibar Login', function() {
    it('Dolibar login nok', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso")
        cy.get('.login_table').contains('Connection').click()
        cy.contains('Bad value for login or password')
        
    })
})


describe('Dolibar Terceros', function() {
    it('Dolibar ir a Terceros', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
        cy.contains('Third parties and contact area')
        
    })
})





describe('Dolibar Terceros', function() {
    it('Dolibar Crear a Terceros', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
        cy.get('.vmenu').contains('New customer').click()
	//const uuid = () => Cypress._.random(0, 1e6) 
	cy.get('.tabBar').find('input[name="name"]').click().type("EMPANADITASCO")
	cy.get('.tabBar').find('input[name="name_alias"]').click().type("EMPANADITASCO")
	cy.get('.tabBar').find('select[name="client"]').select("Prospect")
	cy.get('.tabBar').find('textarea[name="address"]').type("CL 170 45 70")
	cy.get('.tabBar').find('input[name="zipcode"]').type("909010")
	cy.get('.tabBar').find('input[name="town"]').type("BOGOTA")
	cy.get('.tabBar').find('input[id="s2id_autogen2_search"]').click({force: true}).type("BOG - Bogotá")
	cy.get('.tabBar').find('input[name="email"]').click().type("empanaditas@uniandes.edu.co")
	cy.get('.tabBar').find('input[name="url"]').click().type("uniandes.edu.co")
	cy.get('.tabBar').find('input[name="phone"]').click().type("6717175")
	cy.get('.tabBar').find('select[name="typent_id"]').select("Other")
	cy.get('.tabBar').find('input[name="capital"]').click().type("100000")
        cy.get('.center').contains('Create third party').click()
 	cy.contains('EMPANADITASCO')

        
    })
})



describe('Dolibar Terceros', function() {
    it('Dolibar inyeccion de codigo a Terceros', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
        cy.get('.vmenu').contains('New customer').click()
	//const uuid = () => Cypress._.random(0, 1e6) 
	cy.get('.tabBar').find('input[name="name"]').click().type("SELECT * FROM usuarios;")
	cy.get('.tabBar').find('input[name="name_alias"]').click().type("DROP TABLE usuarios;")
	cy.get('.tabBar').find('select[name="client"]').select("Prospect")
	cy.get('.tabBar').find('textarea[name="address"]').type("CL 170 45 70")
	cy.get('.tabBar').find('input[name="zipcode"]').type("909010")
	cy.get('.tabBar').find('input[name="town"]').type("BOGOTA")
	cy.get('.tabBar').find('input[id="s2id_autogen2_search"]').click({force: true}).type("BOG - Bogotá")
	cy.get('.tabBar').find('input[name="email"]').click().type("empanaditas@uniandes.edu.co")
	cy.get('.tabBar').find('input[name="url"]').click().type("uniandes.edu.co")
	cy.get('.tabBar').find('input[name="phone"]').click().type("6717175")
	cy.get('.tabBar').find('select[name="typent_id"]').select("Other")
	cy.get('.tabBar').find('input[name="capital"]').click().type("100000")
        cy.get('.center').contains('Create third party').click()
 	cy.contains('Access refused by SQL/Script injection protection')

        
    })
})


describe('Dolibar Terceros', function() {
    it('Dolibar Buscar Terceros', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
	cy.get('.fichethirdleft').find('input[name="search_thirdparty"]').click().type("EMPANADITASCO")
        cy.get('.fichethirdleft').find('input[value="Search"]').click()
	cy.get('.div-table-responsive').contains('EMPANADITASCO').click()
    })
})







describe('Dolibar Terceros', function() {
    it('Dolibar Modificar Terceros', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
	cy.get('.fichethirdleft').find('input[name="search_thirdparty"]').click().type("EMPANADITASCO")
        cy.get('.fichethirdleft').find('input[value="Search"]').click()
	cy.get('.div-table-responsive').contains('EMPANADITASCO').click()

	cy.get('.tabsAction').contains('Modify').click()


	cy.get('.tabBar').find('input[name="name"]').clear()
	cy.get('.tabBar').find('input[name="name_alias"]').clear()
	cy.get('.tabBar').find('textarea[name="address"]').clear()
	cy.get('.tabBar').find('input[name="zipcode"]').clear()
	cy.get('.tabBar').find('input[name="town"]').clear()
	cy.get('.tabBar').find('input[name="email"]').clear()
	cy.get('.tabBar').find('input[name="url"]').clear()
	cy.get('.tabBar').find('input[name="phone"]').clear()
	cy.get('.tabBar').find('input[name="capital"]').clear()


	cy.get('.tabBar').find('input[name="name"]').click().type("EMPANADITASCO2")
	cy.get('.tabBar').find('input[name="name_alias"]').click().type("EMPANADITASCO2")
	cy.get('.tabBar').find('select[name="client"]').select("Customer")
	cy.get('.tabBar').find('textarea[name="address"]').type("CL 170 45 40")
	cy.get('.tabBar').find('input[name="zipcode"]').type("909011")
	cy.get('.tabBar').find('input[name="town"]').type("BOGOTA")
	cy.get('.tabBar').find('input[name="email"]').click().type("empanaditas2@uniandes.edu.co")
	cy.get('.tabBar').find('input[name="url"]').click().type("uniandes.edu.co")
	cy.get('.tabBar').find('input[name="phone"]').click().type("6717179")
	cy.get('.tabBar').find('select[name="typent_id"]').select("Other")
	cy.get('.tabBar').find('input[name="capital"]').click().type("500000")
        cy.get('.fiche').contains('Save').click()
	cy.contains('EMPANADITASCO2')

 
    })
})





describe('Dolibar Terceros', function() {
    it('Dolibar Eliminar Terceros', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
	cy.get('.fichethirdleft').find('input[name="search_thirdparty"]').click().type("EMPANADITASCO")
        cy.get('.fichethirdleft').find('input[value="Search"]').click()
	cy.get('.div-table-responsive').contains('EMPANADITASCO2').click()

	cy.get('.tabsAction').contains('Delete').click()
	cy.get('.ui-dialog-buttonset').contains('Yes').click()

    })
})


describe('Dolibar Terceros', function() {
    it('Dolibar Crear a Contactos', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
        cy.get('.vmenu').contains('New customer').click()
	//const uuid = () => Cypress._.random(0, 1e6) 
	cy.get('.fiche').find('input[id="radioprivate"]').check()


	cy.get('.tabBar').find('input[name="name"]').click().type("RUNZA")
	cy.get('.tabBar').find('input[name="firstname"]').click().type("JORGE")
	cy.get('.tabBar').find('input[name="name_alias"]').click().type("EMPANADITASCO")
	cy.get('.tabBar').find('select[name="client"]').select("Prospect")
	cy.get('.tabBar').find('textarea[name="address"]').type("CL 170 45 70")
	cy.get('.tabBar').find('input[name="zipcode"]').type("909010")
	cy.get('.tabBar').find('input[name="town"]').type("BOGOTA")
	cy.get('.tabBar').find('input[id="s2id_autogen2_search"]').click({force: true}).type("BOG - Bogotá")
	cy.get('.tabBar').find('input[name="email"]').click().type("empanaditas@uniandes.edu.co")
	cy.get('.tabBar').find('input[name="url"]').click().type("uniandes.edu.co")
	cy.get('.tabBar').find('input[name="phone"]').click().type("6717175")
	cy.get('.tabBar').find('select[name="typent_id"]').select("Other")
	cy.get('.tabBar').find('input[name="capital"]').click().type("100000")
        cy.get('.center').contains('Create third party').click()
 

        
    })
})

describe('Dolibar Terceros', function() {
    it('Dolibar Buscar Contactos', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
	cy.get('.fichethirdleft').find('input[name="search_contact"]').click().type("JORGE RUNZA")
        cy.get('.fichethirdleft').find('input[value="Search"]').click()
	cy.get('.div-table-responsive').contains('JORGE RUNZA').click()
    })
})




describe('Dolibar Terceros', function() {
    it('Dolibar Modificar Contactos', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
	cy.get('.fichethirdleft').find('input[name="search_contact"]').click().type("JORGE RUNZA")
        cy.get('.fichethirdleft').find('input[value="Search"]').click()
	cy.get('.div-table-responsive').contains('RUNZA').click()

	cy.get('.tabsAction').contains('Modify').click()


	cy.get('.tabBar').find('input[name="lastname"]').clear()
	cy.get('.tabBar').find('input[name="firstname"]').clear()
	cy.get('.tabBar').find('textarea[name="address"]').clear()
	cy.get('.tabBar').find('input[name="zipcode"]').clear()
	cy.get('.tabBar').find('input[name="town"]').clear()
	cy.get('.tabBar').find('input[name="email"]').clear()
	cy.get('.tabBar').find('input[name="phone_pro"]').clear()


	cy.get('.tabBar').find('input[name="lastname"]').click().type("RUNZA3")
	cy.get('.tabBar').find('input[name="firstname"]').click().type("JORGE3")
	cy.get('.tabBar').find('textarea[name="address"]').type("CL 170 45 40")
	cy.get('.tabBar').find('input[name="zipcode"]').type("909011")
	cy.get('.tabBar').find('input[name="town"]').type("BOGOTA")
	cy.get('.tabBar').find('input[name="email"]').click().type("empanaditas2@uniandes.edu.co")
	cy.get('.tabBar').find('input[name="phone_pro"]').click().type("6717179")
        cy.get('.fiche').contains('Save').click()
	cy.contains('JORGE3 RUNZA3')

 
    })
})



describe('Dolibar Terceros', function() {
    it('Dolibar Eliminar Contactos', function() {
	cy.viewport(768, 1024)  
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.get('.tmenu').contains('Third parties').click()
	cy.get('.fichethirdleft').find('input[name="search_contact"]').click().type("JORGE3 RUNZA3")
        cy.get('.fichethirdleft').find('input[value="Search"]').click()
	cy.get('.div-table-responsive').contains('RUNZA').click()

	cy.get('.tabsAction').contains('Delete').click()
	cy.get('.ui-dialog-buttonset').contains('Yes').click()

    })
})





