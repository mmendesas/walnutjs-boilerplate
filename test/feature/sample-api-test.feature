Feature: API test

        @simple_api2 @get
    Scenario: User wants to make a simple GET        
        Given (api) user creates a GET request to 'https://httpbin.org/get'
        When (api) user sends the request
        Then (api) the response status should be '200'
        And (api) the JSON (jsonpath) key '$..headers.Host' should have value equals to 'httpbin.org'

        @simple_api2 @get
    Scenario: User wants to make a simple GET        
        And (api) user sends a GET request to 'https://httpbin.org/get'        
        Then (api) the response status should be '200'
        And (api) the JSON (jsonpath) key '$..headers.Host' has value equals to 'httpbin.org'

        @simple_api2 @post
    Scenario: I want to make a simple request with XML
        Given (api) user set the baseURI with 'https://httpbin.org'
        And (api) user builds the GET request with the path '/xml'
        When (api) user executes the request
        Then (api) user receives the status code equals to '200'
        And (api) the XML (xpath) key '(//title)[1]' has value equals to 'Wake up to WonderWidgets!'
        #And (api) user prints the current RESPONSE body content

        @simple_api1u
    Scenario: I want to make a simple POST request
        Given (api) user set the baseURI with 'https://httpbin.org'
        And (api) user builds the POST request with the path '/post'
        And (api) user set header 'Accept' with value 'application/xml'
        And (api) user add the XML BODY from the resource '/home/mmendes/Downloads/Pedido - Credito.txt'
        When (api) user executes the request
        Then (api) user receives the status code equals to '200'