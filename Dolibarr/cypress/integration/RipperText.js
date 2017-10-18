describe('Los estudiantes under monkeys - Random Inputs', function() {
    it('visits los estudiantes and survives monkeys', function() {
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.wait(1000);
        cy.get('.tmenu').contains('Third parties').click()
        randomText(10);
    })
})
function randomText(monkeysLeft) {

    function getRandomInt(min, max) {
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min)) + min;
    };

    var randomString = function(length) {
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        for(var i = 0; i < length; i++) {
            text += possible.charAt(Math.floor(Math.random() * possible.length));
        }
        return text;
    };
    
    if(monkeysLeft > 0) {
        cy.get('input').then($inputs => {
            var randomInput = $inputs.get(getRandomInt(0, $inputs.length));
            if(randomInput.type !== "checkbox") {
                try {
                    if(!Cypress.Dom.isHidden(randomInput)) {
                        cy.wrap(randomInput).click({force: true}).type(randomString(getRandomInt(5, 20)));
                        monkeysLeft- 1;
                    }
                }
                catch(e) {
                    console.log(e);
                }
            }
            setTimeout(randomText, 1000, monkeysLeft);
        });
    }   
}
