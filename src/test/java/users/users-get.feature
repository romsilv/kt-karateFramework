Feature:  test users from reqres.in
  Scenario: Retrieve users data
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200