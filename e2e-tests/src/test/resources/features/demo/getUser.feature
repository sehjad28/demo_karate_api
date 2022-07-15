Feature: Get User Details

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')
    * def id = '3333'
 
  Scenario: Get User Details
     Given path karate.properties['path']
     And path id
     * print url
     And headers getmyheaders()
     When method Get
     Then status 404



