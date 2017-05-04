var soap = require('soap');
var url = 'http://dft-us-openfire-backend-38bf02ed.aws.dafitierp.com.br:8080/projsacsb-1.0/PedidosServiceImpl?wsdl';
var url2 = 'http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx?wsdl';
var args = { name: 'value' };

soap.createClient(url, function (err, client) {
    soap.createClient(url2, function (err, client2) {
        client.SI_UPORDER_INB_SYNC(args, function (err, result) {
            console.log(result);
        });
    });
});