Feature: Feature File call 2

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')

  Scenario: calling feature file

    * def callresponse = call read('classpath:features/demo2/postCreateUser.feature')
    * print callresponse.response