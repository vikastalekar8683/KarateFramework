Feature: To test thge end point of the application
  to test different get end point with different data format supported by the application
  
  Scenario: To get all the data from application in JSON format
    Given url 'https://fakestoreapi.com/products'
    When method get #Send the get request
    Then status 200 #status code should be 200
    