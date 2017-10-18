describe('Los estudiantes under monkeys - Random Link', function() {
    it('visits los estudiantes and survives monkeys', function() {
        cy.visit('http://52.54.130.109/dolibarr/admin/index.php?')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("miso2017")
        cy.get('.login_table').contains('Connection').click()
        cy.wait(1000);
        cy.get('.tmenu').contains('Third parties').click()
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
