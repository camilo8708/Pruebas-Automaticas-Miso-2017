Feature: Filtro de productos


  Scenario: Filtro de productos de mujeres  
	Given I press "Skip"
	When I scroll down
	When I scroll down
	Then I press view with id "category_image"
	Given I press "14"
	Then I should see "Curved plain cotton blouse"
	Then I should see "Woman Blazer with gold buttons Wool and Cashmere"
	Then I should see "Cotton suit jacket"
	Then I should see "Pack Blazer + Shirt"