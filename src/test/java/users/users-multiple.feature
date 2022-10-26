Feature: multiple request
  Background:
    * url "https://reqres.in/api"
    * path "/users"

  Scenario Outline: Post users
    When method post
    Then status 201

  Examples:
  | name     | job |
  | morpheus|  leader   |
  | jose    |  lawyer   |
  |  Tom    | QA    |

#  Scenario: Enviar multiples POST user1
#    #Given request {"name": "morpheus", "job": "leader"}
#    When method post
#    Then status 201
#
#  Scenario: Enviar multiples POST user2
#    #Given request {"name": "jose", "job": "lawyer"}
#    When method post
#    Then status 201
#
#  Scenario: Enviar multiples POST user3
#    #Given request {"name": "Tome", "job": "Tome"}
#    When method post
#    Then status 201

    ###

