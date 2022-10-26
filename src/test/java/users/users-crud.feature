Feature: Crud users
  Background:
    * url "https://reqres.in/api"

  Scenario: Crear usuario
    Given path "/users"
    And request {"name":"tom", "job": "qa"}
    When method post
    Then status 201
    And match response contains {"id":'#number',"createdAt": '#string', '##string'}





#    #* def id = response.id
#    # * print id = 2
#    * def id = "2"



  Scenario: Obtener usuarios

      Given path "/users?page=(id)"
      When method get
      Then status 200

  Scenario: Eliminar usuario por Id
    Given path "/users/(id)"
    When method delete
    Then status 204



