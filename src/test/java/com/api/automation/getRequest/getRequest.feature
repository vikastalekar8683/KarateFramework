Feature: Test the application's product endpoint

  Background: Setup the base path
    Given url 'https://fakestoreapi.com'
    And print "============= Background KeyWord =================="

  Scenario: To test the end point with JSON data
    Given url 'https://fakestoreapi.com/products'
    When method get
    And print response
    Then status 200
    And match response == '#[]'

  Scenario: To test the end point with JSON data using path variable
   # Given url 'https://fakestoreapi.com'
    Given path '/products'
    When method get
    And print response
    Then status 200
    And match response == '#[]'

  Scenario: To test the end point with XML data using path variable
   # Given url 'https://fakestoreapi.com'
    Given path '/products'
    And header Accept = 'application/xml'
    When method get
    And print response
    Then status 200
    And match response == '#[]'

