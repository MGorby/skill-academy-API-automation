Feature: Search

  Scenario: Get Search Data
    Given User sets the base API request "/users"
    When User sends the API request to get all the list
    And user analyze the response
    Then User validates the response status is 200
    And user see below data is correct as String :
      | status | success  |
      | message | success |
    And user see below data is correct as Integer :
      | data.page       | 1  |
      | data.pageSize   | 10 |
    And user see inside "data.data", below field is not null or empty :
      | basePrice                     |
      | categories                    |
      | courseDescription             |
      | courseName                    |
      | courseSerial                  |
      | createdAt                     |
      | imageUrl                      |
      | introductionVideoThumbnailURL |
      | introductionVideoURL          |
      | isSubscribed                  |
      | marketType                    |
      | merchantSerial                |
      | price                         |
      | rating                        |
      | slug                          |
      | tags                          |
      | totalRating                   |
      | transactional                 |
      | updatedAt                     |