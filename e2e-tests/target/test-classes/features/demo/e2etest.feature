Feature: E2E test flow

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')

  Scenario:  E2E test flow
    * def createUserResponse = call read('classpath:features/demo/postCreateUser.feature')
    * print createUserResponse.responseHeaders.Connection[0]
    * def createUserResponse = createUserResponse.response
    * print createUserResponse
    Given path karate.properties['path'], createUserResponse.id
    And headers getmyheaders()
    When method Delete
    Then status 204

    Given path karate.properties['path']
    And path createUserResponse.id
    And headers getmyheaders()
    When method Get
    Then status 404
    And assert responseStatus == 404 || responseStatus == 400
    * match response.message == 'Resource not found'
    * if (responseStatus == 404) karate.call('test.feature')
    * def result = response.message == 'Resource not found' ? "Equal" : "Unequal"
    * print result
    



