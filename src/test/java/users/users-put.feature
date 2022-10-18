Feature:  test users from reqres.in
  Scenario: update user by id
    Given url "https://reqres.in/api/users/2"
    And request {"name": "morpheus","job": "zion resident"}
    When method put
    Then status 200