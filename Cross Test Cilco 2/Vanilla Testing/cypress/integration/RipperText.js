describe('Los vanilla under monkeys - Random Inputs', function() {
    it('visits los vanilla and survives monkeys', function() {
        cy.visit('http://34.239.0.77/vanilla/entry/signin?Target=discussions')
        cy.get('#Form_User_SignIn').find('input[id="Form_Email"]').click().type("misotest2017")
        cy.get('#Form_User_SignIn').find('input[id="Form_Password"]').click().type("12345678")
	cy.get('#Form_User_SignIn').find('input[id="Form_SignIn"]').click()
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
