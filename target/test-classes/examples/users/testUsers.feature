Feature: test script


  Background:
    * url 'http://www.mocky.io/v2'


  Scenario: get all users and then get the first user by id
    Given path '5eb7f1f52d00005800357b72'
    When method get
    Then status 200
    Then print response
    And match $.username == '#present'
    And match $.id == '#present'
    And match $.username == 'testUser'
    And match $.id contains '1'

