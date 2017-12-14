var currentLocation='';

describe('Dolibar Login', function() {
    it('Dolibar login nok', function() {
        browser.url('http://52.39.135.49/dolibarr/admin/index.php?')
		var login_table = browser.element('.login_table');
		login_table.setValue('input[name="username"]', 'adminfalso');
        login_table.setValue('input[name="password"]','miso2017falso');
		var selecti = login_table.element('input[type="submit"]');
	    selecti.click(); 
		var error = browser.element('.error').getText();
        expect(error).toBe('Bad value for login or password');		
    })
})


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

describe('Dolibar Terceros', function() {
    it('Dolibar ir a Terceros', function() {
        browser.url('http://52.39.135.49/dolibarr/admin/index.php?')

		var tmenu = browser.element('.tmenu');
		var selecti = tmenu.element('span[class="mainmenuaspan"]');
	    selecti.click(); 
        
    })
})

describe('Dolibar Terceros', function() {
    it('Dolibar ir a Terceros', function() {
        browser.url('http://52.39.135.49/dolibarr/societe/soc.php?action=create&leftmenu=')
 
		var tabBar = browser.element('.tabBar');
		tabBar.setValue('input[name="name"]','EMPANADITASCO');
		tabBar.setValue('textarea[name="address"]',"CL 170 45 70");
		tabBar.selectByValue('select[name="client"]',"1");
		tabBar.setValue('input[name="zipcode"]',"909010");
		tabBar.setValue('input[name="town"]',"BOGOTA");
		tabBar.setValue('input[name="email"]',"empanaditas@uniandes.edu.co");
		tabBar.setValue('input[name="url"]',"uniandes.edu.co");
		tabBar.setValue('input[name="phone"]',"6717175");
		tabBar.selectByValue('select[name="typent_id"]',"100");
		tabBar.setValue('input[name="capital"]',"100000");

		browser.element('input[name="create"]').click();
		currentLocation = browser.getUrl();
		
        
    })
})

describe('Dolibar Terceros', function() {
    it('Dolibar Buscar Terceros', function() {
        browser.url('http://52.39.135.49/dolibarr/societe/index.php?mainmenu=companies&leftmenu=')

		var fichethirdleft = browser.element('.fichethirdleft');

		fichethirdleft.setValue('input[name="search_thirdparty"]','EMPANADITASCO');
	    fichethirdleft.element('input[value="Search"]').click();
		var result = browser.element('.div-table-responsive').getText();
        expect(result).toMatch('EMPANADITASCO');		
    })
})

describe('Dolibar Terceros', function() {
    it('Dolibar Modificar Terceros', function() {
        browser.url(currentLocation)

		var tabs = browser.element('.tabs');
	    tabs.element('a[id="card"]').click();
		
		var tabsAction = browser.element('.tabsAction');
	    tabsAction.element('a[href*="edit"]').click();
        
		var tabBar = browser.element('.tabBar');
		tabBar.clearElement('input[name="name"]');
		tabBar.clearElement('input[name="name_alias"]');
		tabBar.clearElement('textarea[name="address"]');
		tabBar.clearElement('input[name="zipcode"]');
		tabBar.clearElement('input[name="town"]');
		tabBar.clearElement('input[name="email"]');
		tabBar.clearElement('input[name="url"]');
		tabBar.clearElement('input[name="phone"]');
		tabBar.clearElement('input[name="capital"]');


		tabBar.setValue('input[name="name"]',"EMPANADITASCO2")
		tabBar.setValue('input[name="name_alias"]',"EMPANADITASCO2")
		tabBar.selectByValue('select[name="client"]',"0");
		tabBar.setValue('textarea[name="address"]',"CL 170 45 40")
		tabBar.setValue('input[name="zipcode"]',"909011")
		tabBar.setValue('input[name="town"]',"BOGOTA")
		tabBar.setValue('input[name="email"]',"empanaditas2@uniandes.edu.co")
		tabBar.setValue('input[name="url"]',"uniandes.edu.co")
		tabBar.setValue('input[name="phone"]',"6717179")
		tabBar.selectByValue('select[name="typent_id"]',"8");
		tabBar.setValue('input[name="capital"]',"500000")
		
		browser.element('input[name="save"]').click();
	    var result = browser.getText('div[class="inline-block floatleft valignmiddle refid refidpadding"]');
        expect(result).toMatch('EMPANADITASCO2');

    })
})


describe('Dolibar Terceros', function() {
    it('Dolibar Eliminar Terceros', function() {
        browser.url(currentLocation)

		var tabs = browser.element('.tabs');
	    tabs.element('a[id="card"]').click();
		
		var tabsAction = browser.element('.tabsAction');
	    tabsAction.element('span[id*="action-delete"]').click();
		var buttonset = browser.element('.ui-dialog-buttonset');
	    buttonset.element('button[class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"]').click();
    })
})



describe('Dolibar Terceros', function() {
    it('Dolibar crear Contactos', function() {
        browser.url('http://52.39.135.49/dolibarr/societe/soc.php?action=create&leftmenu=')
 
		var tabBar = browser.element('.tabBar');
		var fiche = browser.element('.fiche');
		
		fiche.element('input[id="radioprivate"]').click();
		
		tabBar.setValue('input[name="name"]',"RUNZA");
	    tabBar.setValue('input[name="firstname"]',"JORGE");
		
		tabBar.setValue('input[name="name"]','EMPANADITASCO');
		tabBar.setValue('textarea[name="address"]',"CL 170 45 70");
		tabBar.selectByValue('select[name="client"]',"1");
		tabBar.setValue('input[name="zipcode"]',"909010");
		tabBar.setValue('input[name="town"]',"BOGOTA");
		tabBar.setValue('input[name="email"]',"empanaditas@uniandes.edu.co");
		tabBar.setValue('input[name="url"]',"uniandes.edu.co");
		tabBar.setValue('input[name="phone"]',"6717175");
		tabBar.selectByValue('select[name="typent_id"]',"100");
		tabBar.setValue('input[name="capital"]',"100000");

		browser.element('input[name="create"]').click();
		currentLocation = browser.getUrl();
		
        
    })
})

describe('Dolibar Terceros', function() {
    it('Dolibar Buscar Contactos', function() {
        browser.url('http://52.39.135.49/dolibarr/societe/index.php?mainmenu=companies&leftmenu=')

		var fichethirdleft = browser.element('.fichethirdleft');
		
		fichethirdleft.setValue('input[name="search_contact"]','JORGE RUNZA")');
	    fichethirdleft.element('input[value="Search"]').click();
		var result = browser.element('.div-table-responsive').getText();
        expect(result).toMatch('JORGE RUNZA');		
    })
})

describe('Dolibar Terceros', function() {
    it('Dolibar Modificar Contactos', function() {
        browser.url(currentLocation)

		var tabs = browser.element('.tabs');
	    tabs.element('a[id="card"]').click();
		
		var tabsAction = browser.element('.tabsAction');
	    tabsAction.element('a[href*="edit"]').click();
        
		var tabBar = browser.element('.tabBar');
		tabBar.clearElement('input[name="name"]');
		tabBar.clearElement('input[name="name_alias"]');
		tabBar.clearElement('textarea[name="address"]');
		tabBar.clearElement('input[name="zipcode"]');
		tabBar.clearElement('input[name="town"]');
		tabBar.clearElement('input[name="email"]');
		tabBar.clearElement('input[name="url"]');
		tabBar.clearElement('input[name="phone"]');
		tabBar.clearElement('input[name="capital"]');

		tabBar.setValue('input[name="name"]',"EMPANADITASCO2")
		tabBar.setValue('input[name="name_alias"]',"EMPANADITASCO2")
		tabBar.selectByValue('select[name="client"]',"0");
		tabBar.setValue('textarea[name="address"]',"CL 170 45 40")
		tabBar.setValue('input[name="zipcode"]',"909011")
		tabBar.setValue('input[name="town"]',"BOGOTA")
		tabBar.setValue('input[name="email"]',"empanaditas2@uniandes.edu.co")
		tabBar.setValue('input[name="url"]',"uniandes.edu.co")
		tabBar.setValue('input[name="phone"]',"6717179")
		tabBar.selectByValue('select[name="typent_id"]',"8");
		tabBar.setValue('input[name="capital"]',"500000")
		
		browser.element('input[name="save"]').click();
	    var result = browser.getText('div[class="inline-block floatleft valignmiddle refid refidpadding"]');
        expect(result).toMatch('EMPANADITASCO2');

    })
})


describe('Dolibar Terceros', function() {
    it('Dolibar Eliminar Contactos', function() {
        browser.url(currentLocation)

		var tabs = browser.element('.tabs');
	    tabs.element('a[id="card"]').click();
		
		var tabsAction = browser.element('.tabsAction');
	    tabsAction.element('span[id*="action-delete"]').click();
		var buttonset = browser.element('.ui-dialog-buttonset');
	    buttonset.element('button[class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"]').click();
    })
})






describe('Dolibar Terceros', function() {
    it('Dolibar inyeccion de codigo a Terceros', function() {
      browser.url('http://52.39.135.49/dolibarr/societe/soc.php?action=create&leftmenu=')
 
		var tabBar = browser.element('.tabBar');
		tabBar.setValue('input[name="name"]','SELECT * FROM usuarios;');
		tabBar.setValue('textarea[name="address"]',"DROP TABLE usuarios;");
		tabBar.selectByValue('select[name="client"]',"1");
		tabBar.setValue('input[name="zipcode"]',"909010");
		tabBar.setValue('input[name="town"]',"BOGOTA");
		tabBar.setValue('input[name="email"]',"empanaditas@uniandes.edu.co");
		tabBar.setValue('input[name="url"]',"uniandes.edu.co");
		tabBar.setValue('input[name="phone"]',"6717175");
		tabBar.selectByValue('select[name="typent_id"]',"100");
		tabBar.setValue('input[name="capital"]',"100000");

		browser.element('input[name="create"]').click();;
	

        
    })
})

