Feature: POSTandGETCall

  Background:
    * url 'https://43db3005-4ed9-4bab-b0a3-bb066e79e816.mock.pstmn.io'
    * def user =
      """
      {
   "firstName":"James",
   "lastName":"White",
   "username":"jamesWhite",
   "email":"james@user.com",
   "phones":[
  {
    "type":"HOME",
    "number":"1234567890",
    "countryCode":4
  }
  ]
}
      """

  Scenario: create a user from given details.

    Given path 'POSTUser'
    And request user
    And remove user.phones[]
    When method post
    Then status 201
    And match $.Status == '#present'
    And match $.Status == 'OK'

#  Scenario: Validate the user is created with valid details.
#
#    Given path 'GETUser'
#    When method get
#    Then status 200
#    And match $.firstName == user.firstName
#    And match $.lastName == user.lastName
#    And match $.username == user.username
#    And match $.email == user.email


  