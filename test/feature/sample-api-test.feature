Feature: API test

@api_walnutjs7
    Scenario: I want to make a simple request with JSON
        Given (api) user set the baseURI with 'https://httpbin.org'
        And (api) user builds the GET request with the path '/get'
        When (api) user executes the request
        Then (api) user receives the status code equals to '200'
        And (api) the JSON (jsonpath) key '$..headers.Host' has value equals to 'httpbin.org'

        @api_walnutjs7
    Scenario: I want to make a simple request with XML
        Given (api) user set the baseURI with 'https://httpbin.org'
        And (api) user builds the GET request with the path '/xml'
        When (api) user executes the request
        Then (api) user receives the status code equals to '200'
        And (api) the XML (xpath) key '(//title)[1]' has value equals to 'Wake up to WonderWidgets!'
        And (api) user prints the current REQUEST body content

        @api_walnutjs
    Scenario: I want to make a simple POST request
        Given (api) user set the baseURI with 'https://httpbin.org'
        And (api) user builds the POST request with the path '/request'
        And (api) user set header 'Accept' with value 'application/xml'
        And (api) user add the XML BODY from the resource '/home/mmendes/Downloads/Pedido - Credito.txt'
        When (api) user executes the request
        Then (api) user receives the status code equals to '200'
