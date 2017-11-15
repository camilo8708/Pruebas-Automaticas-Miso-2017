Feature: Manejo de productos favoritos

  Scenario: Adcionar un producto como favorito
	Then I scroll down
	Given I press "Batterie 510CC"
	Then I press view with id "wish_list"
	
  Scenario: Validar y desmarcar como favorito un producto
	Then I wait for 10 seconds
	Then I press view with id "cart_billing"
	Given I press "Favourites"
	Then I should see "Batterie 510CC"
	Then I should see "€13.05"
	Then I press view with id "product_wish_list"
	Then I go back
	Given I press "Favourites"
	Then I should see "We are sorry"
	Then I should see "No products in your favourites"