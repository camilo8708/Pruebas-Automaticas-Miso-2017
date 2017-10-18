function loadScript(callback) {
	var s = document.createElement('script');
	s.src = 'https://rawgithub.com/marmelab/gremlins.js/master/gremlins.min.js';
	if(s.addEventListener) { 
		s.addEventListener('load',callback,false);
	} else if(s.readyState) {
		s.onreadystatechange = callback
	}
	document.body.appendChild(s);
}

function unleashGremlins(ttl, callback) {
    function stop() {
        horde.stop();
        callback();
    }
    var horde = window.gremlins.createHorde();
    horde.after(callback);
    horde.seed(1234);
    window.onbeforeunload = stop;
    horde
    .allGremlins()
    .gremlin(function() {
      var targetElement, availableForms;
      availableForms = document.querySelectorAll('form');
      targetElement = availableForms[Math.floor(Math.random()*availableForms.length)];
      var evt = document.createEvent('HTMLEvents');
      evt.initEvent('submit');
      targetElement.dispatchEvent(evt); 
      console.log('gremlin submit ', targetElement);
    })
    .gremlin(gremlins.species.clicker().clickTypes(['click'])
      .canClick((element) => {
        return element.tagName.toLowerCase() === 'button' || element.tagName.toLowerCase() === 'a';
    })).gremlin(gremlins.species.formFiller())
    .strategy(gremlins.strategies.distribution()
    .delay(100)
    .distribution([0.6, 0.4]))
    .unleash();
    setTimeout(stop, ttl);
}

describe('Monkey testing with gremlins ', function () {
  
  it('it should not raise any error', function () {
    browser.url('http://52.54.130.109/dolibarr/admin/index.php?');

    var cajaLogIn = browser.element('.login_table');
    cajaLogIn.setValue('input[name="username"]', 'admin');
    cajaLogIn.setValue('input[name="password"]','miso2017');
    cajaLogIn.click('input[type="submit"]');

    var tmenu = browser.element('.tmenu');
    tmenu.click('a[id="mainmenua_companies"]');
    
    browser.timeoutsAsyncScript(60000);
    browser.executeAsync(loadScript);
   
    browser.timeoutsAsyncScript(60000);
    browser.executeAsync(unleashGremlins, 50000);
  });

  afterAll(function() {
	 browser.log('browser').value.forEach(function(log) { 
		 browser.logger.info(log.message.split(' ')[2]);
	 ;});
  });

});
