describe('Los vanilla under monkeys', function() {
    it('visits los vanilla and survives monkeys', function() {
        cy.visit('http://34.239.0.77/vanilla/entry/signin?Target=discussions')
        cy.get('#Form_User_SignIn').find('input[id="Form_Email"]').click().type("misotest2017")
        cy.get('#Form_User_SignIn').find('input[id="Form_Password"]').click().type("12345678")
	cy.get('#Form_User_SignIn').find('input[id="Form_SignIn"]').click()
        randomEvent(100000);
    })
})
function randomClick(monkeysLeft) {

    function getRandomInt(min, max) {
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min)) + min;
    };

    var monkeysLeft = monkeysLeft;
    if(monkeysLeft > 0) {
        cy.get('a').then($links => {
            var randomLink = $links.get(getRandomInt(0, $links.length));
            if(!Cypress.Dom.isHidden(randomLink)) {
                cy.wrap(randomLink).click({force: true});
                monkeysLeft = monkeysLeft - 1;
            }
            setTimeout(randomClick, 1000, monkeysLeft);
        });
    }   
}

function randomEvent(monkeysLeft) {

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

    var monkeysLeft = monkeysLeft;
    var revent = getRandomInt(0, 2);
    if (revent == 0){
	    if(monkeysLeft > 0) {
		cy.get('a').then($links => {
		    var randomLink = $links.get(getRandomInt(0, $links.length));
		    if(!Cypress.Dom.isHidden(randomLink)) {
		        cy.wrap(randomLink).click({force: true});
		        monkeysLeft = monkeysLeft - 1;
		    }
		    setTimeout(randomEvent, 1000, monkeysLeft);
		});
	    }
    }else if (revent == 1){
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
            setTimeout(randomEvent, 1000, monkeysLeft);
        });
	    }

    }else {
	    if(monkeysLeft > 0) {
		 cy.get('button').then($buttons => {
            var randomButton = $buttons.get(getRandomInt(0, $buttons.length));
            if(!Cypress.Dom.isHidden(randomButton)) {
                cy.wrap(randomButton).click({force: true});
                monkeysLeft- 1;
            }
            setTimeout(randomClickButton, 1000, monkeysLeft);
        });
	    }
    }      
}



