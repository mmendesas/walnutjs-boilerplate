var helperElement = require('walnutjs/src/support/helper/element');

var custom = function () {

    this.Given(/^\(custom\) simple test$/, function () {
        var item = helperElement.getElementFinder('GoogleHome', 'SearchInput');

        item.getText().then(function (text) {
            helperVars.addVariable('mteste', text);
            console.log('Element Text: ', text);
        });
        console.log("custom simple test");
    });
    
}

module.exports = custom;