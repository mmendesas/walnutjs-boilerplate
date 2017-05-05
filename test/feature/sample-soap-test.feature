Feature: SOAP test

    @simple_soap
    Scenario: I want to test a simple soap
        Given (soap) user set the WSDL Path with value 'http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx?wsdl'
        And (soap) user add the JSON body from the resource './test/resources/soap-test.json'
        And (soap) user fills the (jsonpath) key '$.sCepOrigem' with value '06328080'
        When (soap) user executes the SOAP Request with operation 'CalcPrazo'
        Then (soap) user prints the current REQUEST body content        
        And (soap) the JSON (jsonpath) key '$..Servicos.cServico[0].Codigo' has value equals to '40010'

    @simple_soap
    Scenario: I want to generate input samples
        Given (soap) user set the WSDL Path with value 'http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx?wsdl'
        And (soap) user export all templates from current endpoint to folder './test/templates/correios'