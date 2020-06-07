Feature: POSTCallReadingDataFromExternalFile(1)

  Background:
    * url 'https://43db3005-4ed9-4bab-b0a3-bb066e79e816.mock.pstmn.io'

  Scenario: create a user from given details.

    Given path '/POSTUser'
    And def BodyOfRequest = read(karate.properties['user.dir'] + '/src/test/java/examples/users/dataFiles/userData.json')
    And request BodyOfRequest
    When method post
    Then status 201
    And match $.Status == '#present'
    And match $.Status == 'OK'