describe('Los vanilla under monkeys - Random Link', function() {
    it('visits los vanilla and survives monkeys', function() {
        cy.visit('http://34.239.0.77/vanilla/entry/signin?Target=discussions')
        cy.get('#Form_User_SignIn').find('input[id="Form_Email"]').click().type("misotest2017")
        cy.get('#Form_User_SignIn').find('input[id="Form_Password"]').click().type("12345678")
	cy.get('#Form_User_SignIn').find('input[id="Form_SignIn"]').click()
        randomClick(10);
    })
})
function randomClick(monkeysLeft) {

    function getRandomInt(min, max) {
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min)) + min;
    };

    if(monkeysLeft > 0) {
        cy.get('a').then($links => {
            var randomLink = $links.get(getRandomInt(0, $links.length));
            if(!Cypress.Dom.isHidden(randomLink)) {
                cy.wrap(randomLink).click({force: true});
                monkeysLeft- 1;
            }
            setTimeout(randomClick, 1000, monkeysLeft);
        });
    }   
}
