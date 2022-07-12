Feature: Create User

  Background:
    * url karate.properties['baseURL']

  @PositiveScenario
  Scenario: Create User
    * def request_file_path =  searchFileAndReturnContent('createUser.json')
    * def create_user_request = generateRequest(request_file_path)
    * replace create_user_request.email = getEmail()
    * print create_user_request






