describe('Los estudiantes login', function() {
    it('Visits los estudiantes and fails at login', function() {
        cy.visit('https://losestudiantes.co')
        cy.contains('Cerrar').click()
        cy.contains('Ingresar').click()
        cy.get('.cajaLogIn').find('input[name="correo"]').click().type("cc.huertas@uniandes.edu.co")
        cy.get('.cajaLogIn').find('input[name="password"]').click().type("Taller2")
        cy.get('.cajaLogIn').contains('Ingresar').click()
        cy.contains('Salir')
    })
})

describe('Los estudiantes registro', function() {
    it('Visits los estudiantes and correct at login', function() {
        cy.visit('https://losestudiantes.co')
        cy.contains('Cerrar').click()
        cy.contains('Ingresar').click()

        cy.get('.cajaSignUp').find('input[name="nombre"]').click().type("Cristian")
        cy.get('.cajaSignUp').find('input[name="apellido"]').click().type("Huertas")
        cy.get('.cajaSignUp').find('input[name="correo"]').click().type("cc.huertas@uniandes.edu.co")
        cy.get('.cajaSignUp').find('select[name="idDepartamento"]').select("Física")
        cy.get('.cajaSignUp').find('input[name="password"]').click().type("Taller2")
        cy.get('.cajaSignUp').find('input[name="acepta"]').click()
        cy.get('.cajaSignUp').contains('Registrarse').click()
        cy.contains('Error: Ya existe un usuario registrado con el correo \'cc.huertas@uniandes.edu.co\'')
    })
})

describe('Los estudiantes busqueda profesor', function() {
    it('Visits los estudiantes and busqueda profesor', function() {
        cy.visit('https://losestudiantes.co')
        cy.contains('Cerrar').click()

        cy.get('.Select-input').find('input[role="combobox"]').click({force: true}).type("Mario Villamizar")
        cy.get('.Select-option').click()
        cy.get('.descripcionProfesor').contains('Mario Villamizar Cano')
        cy.get('.descripcionProfesor').contains('Ingeniería de Sistemas')
        cy.get('.descripcionProfesor').contains('Universidad de los Andes')

    })
})

describe('Los estudiantes filtro materia', function() {
    it('Visits los estudiantes and filtro materia', function() {
        cy.visit('https://losestudiantes.co')
        cy.contains('Cerrar').click()

        cy.get('.Select-input').find('input[role="combobox"]').click({force: true}).type("Mario Villamizar")
        cy.get('.Select-option').click()
        cy.get('.descripcionProfesor').contains('Mario Villamizar Cano')
        cy.get('.materias').find('input[name="ISIS1205"]').click()
        cy.get('.carreraCalificacion').contains('Algoritmica Y Progr. Obj. Ii')
        
    })
})

