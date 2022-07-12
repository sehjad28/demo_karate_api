Feature: demo test feature 

  Background:
    * def token = getHeaders()post

  @dummy
  Scenario: Just Print
    * print 'Demo test'
    * print getTomorrowDate()
    * print getHeaders()
    * print token


  
    