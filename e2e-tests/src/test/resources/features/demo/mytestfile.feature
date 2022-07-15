Feature: Test feature
  
  Background: 
    * url karate.properties['baseURL']

  Scenario: Sample test
    * def request_file_path =  searchFileAndReturnContent('createUser.json')
    * json create_user_request = generateRequest(request_file_path)
    * replace create_user_request.status = 'inactive'
    * print 'After --> ', create_user_request

    
    



