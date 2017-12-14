var presupuesto='';
var pedido='';

describe('Dolibar Login', function() {
    it('Dolibar login ok', function() {
        browser.url('http://52.39.135.49/dolibarr/admin/index.php?')
		var login_table = browser.element('.login_table');
		login_table.setValue('input[name="username"]', 'admin');
        login_table.setValue('input[name="password"]','miso2017');
		var selecti = login_table.element('input[type="submit"]');
	    selecti.click();      
    })
})



describe('Dolibarr Modulo Comercial', function() {
    it('Dolibarr - Crear Presupuesto', function() {
        browser.url('http://52.39.135.49/dolibarr/comm/propal/card.php?action=create&leftmenu=propals')
 
		var tabBar = browser.element('.tabBar');
		tabBar.setValue('input[name="ref_client"]',123);
		tabBar.element('a[class="select2-choice"]').click();
		var select2 = browser.element('.select2-results');
		browser.element('li[class="select2-results-dept-0 select2-result select2-result-selectable"]').click();
		tabBar.selectByValue('select[name="cond_reglement_id"]','3');
        tabBar.selectByValue('select[name="mode_reglement_id"]','6');
        tabBar.selectByValue('select[name="demand_reason_id"]','10');
        tabBar.selectByValue('select[name="availability_id"]','3');
        tabBar.selectByValue('select[name="shipping_method_id"]','1');
		tabBar.setValue('input[name="date_livraison"]','04/09/2007');
		tabBar.setValue('textarea[name="note_public"]','Prueba nota publica');
        tabBar.setValue('textarea[name="note_private"]','Prueba nota privada');
		
		browser.element('input[type="submit"]').click();
		presupuesto = browser.getUrl();
		

    })

})

describe('Dolibarr Modulo Comercial', function() {
    it('Dolibarr - Crear Pedido', function() {
		
		browser.url('http://52.39.135.49/dolibarr/commande/card.php?action=create&leftmenu=orders')
 
 
 
		var tabBar = browser.element('.tabBar');
		tabBar.setValue('input[name="ref_client"]',123);
		tabBar.element('a[class="select2-choice"]').click();
		var select2 = browser.element('.select2-results');
		browser.element('li[class="select2-results-dept-0 select2-result select2-result-selectable"]').click();
		tabBar.selectByValue('select[name="cond_reglement_id"]','3');
        tabBar.selectByValue('select[name="mode_reglement_id"]','6');
        tabBar.selectByValue('select[name="demand_reason_id"]','10');
        tabBar.selectByValue('select[name="availability_id"]','3');
        tabBar.selectByValue('select[name="shipping_method_id"]','1');
		tabBar.setValue('textarea[name="note_public"]','Prueba nota publica');
        tabBar.setValue('textarea[name="note_private"]','Prueba nota privada');
		
		browser.element('input[type="submit"]').click();
		pedido = browser.getUrl();
		
	
        
    })
})