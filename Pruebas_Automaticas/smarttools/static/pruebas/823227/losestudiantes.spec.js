var assert = require('assert');

describe('Los estudiantes registro', function() {
    it('should visit los estudiantes and failed at register', function () {
        browser.url('https://losestudiantes.co');
        browser.click('button=Cerrar');
        browser.waitForVisible('button=Ingresar', 10000);
        browser.click('button=Ingresar');

        var cajaSignUp = browser.element('.cajaSignUp');
        var nombre = cajaSignUp.element('input[name="nombre"]');
        nombre.click();
        nombre.keys('Cristian');

        var apellido = cajaSignUp.element('input[name="apellido"]');
        apellido.click();
        apellido.keys('Huertas');

        var correo = cajaSignUp.element('input[name="correo"]');
        correo.click();
        correo.keys('cc.huertas@uniandes.edu.co');

        var departamento = cajaSignUp.element('select[name="idDepartamento"]');
        departamento.selectByIndex(4);

        var password = cajaSignUp.element('input[name="password"]');
        password.click();
        password.keys('Taller2');

        var acepta = cajaSignUp.element('input[name="acepta"]');
        acepta.click();

        var registro = cajaSignUp.element('button=Registrarse');
        registro.click();

        browser.waitForVisible('.sweet-alert', 10000);
    });
});

describe('los estudiantes login', function() {
    it('should visit los estudiantes and correct at log in', function () {
        browser.reload();
        browser.url('https://losestudiantes.co');
        browser.waitForVisible('button=Cerrar', 10000);
        browser.click('button=Cerrar');
        browser.waitForVisible('button=Ingresar', 10000);
        browser.click('button=Ingresar');

        var cajaLogIn = browser.element('.cajaLogIn');
        var mailInput = cajaLogIn.element('input[name="correo"]');

        mailInput.click();
        mailInput.keys('cc.huertas@uniandes.edu.co');

        var passwordInput = cajaLogIn.element('input[name="password"]');

        passwordInput.click();
        passwordInput.keys('Taller2');

        cajaLogIn.element('button=Ingresar').click()
        
        browser.waitForEnabled('#cuenta', 10000);
        var cuenta = browser.element('#cuenta');
        cuenta.click();
    });
});