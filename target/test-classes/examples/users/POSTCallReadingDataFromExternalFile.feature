Feature: POSTCallReadingDataFromExternalFile

  Background:
    * url 'https://43db3005-4ed9-4bab-b0a3-bb066e79e816.mock.pstmn.io'

  Scenario: create a user from given details.

    Given path '/POSTUser'
    And def BodyOfRequest = read("/home/ankur/Desktop/KARATE/new/karateBlog/src/test/java/examples/users/dataFiles/useData.json")
    And request BodyOfRequest
   And set BodyOfRequest.lastName = "1233"
   And  remove BodyOfRequest.firstName
    When method post
    Then status 201
    Then print response
   And match BodyOfRequest.lastName == response.firstName
   And match BodyOfRequest.lastName != '#null'

    And match $.Status == '#present'
    And match $.Status == 'OK'