Feature: To validate the GET End Point
  To validate the get end point response

  Background: setup the base url
    Given url 'https://fakestoreapi.com'

    Scenario: To get the data in JSON format
      Given path '/products'
      And header Accept = 'application/json'
      When method get
      Then status 200
      And print response


  Scenario: To get the data in XML format
    Given path '/products'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response

