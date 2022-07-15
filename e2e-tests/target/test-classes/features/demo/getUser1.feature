Feature: Get User Details 1

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')
    * def id = '123'
  Scenario: Get User Details
    * def createUserResponse = call read('classpath:features/demo/getUser.feature') /id
    * def createUserResponse = createUserResponse.response
    * print '**********************************'
    * print createUserResponse



