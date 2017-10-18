describe('Los estudiantes under monkeys - Random Buttons', function() {
    it('visits los estudiantes and survives monkeys', function() {
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.wait(1000);
        cy.get('.tmenu').contains('Third parties').click()
        randomClickButton(10);
    })
})
function randomClickButton(monkeysLeft) {

    function getRandomInt(min, max) {
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min)) + min;
    };

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
