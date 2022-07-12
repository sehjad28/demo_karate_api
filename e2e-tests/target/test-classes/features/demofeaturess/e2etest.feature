Feature: E2E test flow

  Background:
    * url karate.properties['baseURL']
    * def functions = call read('classpath:karate-config.js')


  Scenario: E2E test

    Gi

