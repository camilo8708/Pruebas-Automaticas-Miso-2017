Feature: Realizar compra

  Scenario: Busqueda de un producto inexistente
	Given I press "Skip"                          
	Given I press "Search..."
	Then I enter text "cama" into field with id "term"
	Then I press the enter button
	Then I should see "No results were found"
	
  Scenario: Busqueda de un inexistente  on caracteres especiales                          
	Given I press "Search..."
	Then I enter text "|°!#$%&/()¡?=¬\\+~<>-_{}[]^{)" into field with id "term"
	Then I press the enter button
	Then I should see "No results were found"
  
  Scenario: Busqueda de un producto existente                      
	Given I press "Search..."
	Then I enter text "Batterie" into field with id "term"
	Given I press "Batterie 510CC"
	Then I should see "Batterie 510CC"
	And I should see "Buy"
