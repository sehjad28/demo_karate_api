Feature: demo test feature 

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')

  @dummy
  Scenario: Just Print
    * print 'Demo test'
    * print getTomorrowDate()
    * print getHeaders()
    * print token


  
    