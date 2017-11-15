var { defineSupportCode } = require('cucumber');
var { expect } = require('chai');
var cont = 0;

defineSupportCode(({Given, When, Then}) => {
    Given('I go to dolibarlogin home screen', () => {
        browser.url('http://52.54.130.109/dolibarr/admin/index.php?');
    });

    When('I open the login screen', () => {
		var login_table = browser.element('.login_table');
    });

    When(/^I fill with (.*) and (.*)$/ , (email, password) => {
		var login_table = browser.element('.login_table');
		login_table.setValue('input[name="username"]', email);
        login_table.setValue('input[name="password"]',password);
    });

    When('I try to login', () => {
		var login_table = browser.element('.login_table');
		var selecti = login_table.element('input[type="submit"]');
	    selecti.click(); 
    });

    Then(/^I expect to see (.*)$/, error => {
        if(error !== "") {
		var errortext = browser.element('.error').getText();
		expect(errortext).to.include(error);
        }
    });

Given('I go to dolibarr create a new tercero', () => {
	
	if (cont == 0){
	    browser.url('http://52.54.130.109/dolibarr/admin/index.php?')
		var login_table = browser.element('.login_table');
		login_table.setValue('input[name="username"]', 'admin');
        login_table.setValue('input[name="password"]','miso2017');
		var selecti = login_table.element('input[type="submit"]');
	    selecti.click();  
		cont ++;
       }
    });

    When('I open the create a new tercero screen', () => {
         browser.url('http://52.54.130.109/dolibarr/societe/soc.php?action=create&leftmenu=');
    });

    When(/^I fill with (.*), (.*) , (.*) , (.*), (.*), (.*), (.*), (.*), (.*) finally (.*)$/, 
        (name, address , client , zipcode, town, email, url, phone, typent_id , capital) => {
			var tabBar = browser.element('.tabBar');
			tabBar.setValue('input[name="name"]',name);
			tabBar.setValue('textarea[name="address"]',address);
			tabBar.selectByValue('select[name="client"]',client);
			tabBar.setValue('input[name="zipcode"]',zipcode);
			tabBar.setValue('input[name="town"]',town);
			tabBar.setValue('input[name="email"]',email);
			tabBar.setValue('input[name="url"]',url);
			tabBar.setValue('input[name="phone"]',phone);
			tabBar.selectByValue('select[name="typent_id"]',typent_id);
			tabBar.setValue('input[name="capital"]',capital);
    });

    When('I try to create a new tercero', () => {
		browser.element('input[name="create"]').click();
		currentLocation = browser.getUrl();
    });

    Then(/^I expect at create a new tercero to see (.*)$/, error => {
        if(error !== "") {
            var result = browser.getText('div[class="jnotify-message"]');
            expect(result).to.include(error);
        
        }else {
			var result = browser.isExisting('div[class="jnotify-message"]').toString();
			expect(result).to.include('false');
			
		}
    });	
	
	
	
});


 


