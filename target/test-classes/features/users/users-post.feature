Feature: Create users
  LGX-286 Como usuario de ligaX necesito poder registrarme en la applicacion

  @happypath
  Scenario: Create an user by giving valid data
    * url baseUrl
    * path "/v1/users"
    * def dataGenerator = Java.type('helpers.DataGenerator')
    * def username = dataGenerator.userName()
    * def email = dataGenerator.email()
    * def inputPayload = { "email": '#(email)', "username": '#(username)', "fullName": "2*4*6*8*11*", "password": "Test.123", "dateOfBirth": "2000-10-25" }


    Given request inputPayload
    When method post
    Then status 201
    And match response contains {"id": '#uuid', "username":  '#string?_.length>=5&&_.length<=30'}