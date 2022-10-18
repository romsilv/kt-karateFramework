Feature:  test users from reqres.in
  Scenario: Delete a user by Id
    Given url "https://reqres.in/api/users/2"
    When method delete
    Then status 204