Feature: Login into dolibar
    As an user I want to authenticate myself within dolibar website in order to create Terceros

Scenario Outline: Login failed with wrong inputs

  Given I go to dolibarlogin home screen
    When I open the login screen
    And I fill with <email> and <password>
    And I try to login
    Then I expect to see <error>

    Examples:
      | email                       | password           | error                    	   |
      | miso@gmail.com              | 1234               | Bad value for login or password |
      | admin					    | miso2017           |                                 |