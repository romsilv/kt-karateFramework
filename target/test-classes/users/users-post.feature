Feature: test users from reqres.in
  Scenario: Create user by sending name,job

    # Given: preconditions for tc
    # When: action/ method post/get/put/patch/delete
    # Then: expected result
  Given url "https://reqres.in/api/users"
    And request {"name": "morpheus", "job": "leader"}
    When method post
    Then status 201
