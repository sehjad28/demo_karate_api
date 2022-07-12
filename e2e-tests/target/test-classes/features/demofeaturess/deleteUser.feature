Feature: Delete User

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')

  Scenario: Delete User
    Given path karate.properties['path'], '<>'
    And headers getmyheaders()
    When method Delete
    Then status 204
    * print response