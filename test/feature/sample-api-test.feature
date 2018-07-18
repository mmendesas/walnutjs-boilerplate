Feature: API test

    @simple_api
    Scenario: User wants to make a simple GET
        Given (api) user creates a GET request to 'https://httpbin.org/get'
        And (api) user will send and accept JSON
        When (api) user sends the request
        Then (api) the response status should be '200'
        And (api) the JSON response key '$..headers.Host' should have value equals to 'httpbin.org'

    @simple_api
    Scenario: User wants to make a GET with parameters
        Given (api) user creates a GET request to 'https://httpbin.org/get'
        And (api) user will send and accept JSON
        And (api) user add the following parameters to request:
            | mteste | 123 |
        When (api) user sends the request
        Then (api) the response status should be '200'
        And (api) the JSON response key '$..headers.Host' should have value equals to 'httpbin.org'

    @simple_api
    Scenario: I want to make a simple request with XML
        Given (api) user creates a GET request to 'https://httpbin.org/xml'
        And (api) user will send and accept XML
        When (api) user sends the request
        Then (api) the response status should be '200'
        And (api) the XML response key '(//title)[1]' should have value equals to 'Wake up to WonderWidgets!'
# And (api) user prints the current RESPONSE body content

    @simple_api
    Scenario: I want to make a simple POST request
        Given (api) user creates a POST request to 'https://httpbin.org/post'
        And (api) user will send and accept JSON
        And (api) user add the following value to BODY request:
            """
            { "mteste": "groselha"}
            """
        When (api) user sends the request
        Then (api) the response status should be '200'
        # And (api) user prints the current RESPONSE body content
        And (api) the JSON response should be:
            """
            {"args":{},"data":"{ \"mteste\": \"groselha\"}","files":{},"form":{},"headers":{"Accept":"application/json","Connection":"close","Content-Length":"23","Content-Type":"application/json","Host":"httpbin.org"},"json":{"mteste":"groselha"},"origin":"187.51.144.58","url":"https://httpbin.org/post"}
            """
        And (api) the JSON response key '$..data' should have value equals to '{ "mteste": "groselha"}'

    @simple_api
    Scenario: I want to make a simple POST request fill body
        Given (api) user creates a POST request to 'https://httpbin.org/post'
        And (api) user will send and accept JSON
        And (api) user fills '$.mteste' with 'grosa'
        When (api) user sends the request
        Then (api) the response status should be '200'
        #And (api) user prints the current RESPONSE body content
        And (api) the JSON response key '$..mteste' should have value equals to 'grosa'

    @simple_api
    Scenario: I want to make a simple POST request fill body
        Given (api) user creates a POST request to 'https://httpbin.org/post'
        And (api) user will send and accept JSON
        And (api) user fills the request body with the following fields:
            | $.mteste | marciomendes |
            | $.mteste | souza        |
        When (api) user sends the request
        Then (api) the response status should be '200'
        #And (api) user prints the current RESPONSE body content
        And (api) the JSON response key '$..mteste' should have value equals to 'souza'

    @simple_api
    Scenario: I want to make a simple POST request fill body using different types
        Given (api) user creates a POST request to 'https://httpbin.org/post'
        And (api) user will send and accept JSON
        And (api) user add the following value to BODY request:
            """
            { "mint": "groselha", "mdouble": "doub", "mbool": "bool"}
            """
        And user stores the value '98759' in variable 'myNumber'
        And (api) user fills '$.mint' with '${vars.myNumber}' using INT type
        And (api) user fills '$.mdouble' with '15.6' using DOUBLE type
        And (api) user fills '$.mbool' with 'true' using BOOL type
        When (api) user sends the request
        Then (api) the response status should be '200'

        # validates the response data
        And (api) the JSON response key '$..mint' should have value equals to '${vars.myNumber}'
        And (api) the JSON response key '$..mdouble' should have value equals to '15.6'
        And (api) the JSON response key '$..mbool' should have value equals to 'true'

    @simple_api
    Scenario: I want to make a simple POST request using null type
        Given (api) user creates a POST request to 'https://httpbin.org/post'
        And (api) user will send and accept JSON
        And (api) user add the following value to BODY request:
            """
            {"test": "65"}
            """
        And (api) user fills '$.test' using NULL type
        When (api) user sends the request
        Then (api) the response status should be '200'
        And (api) the JSON response key '$..data' should have value equals to '{"test":null}'