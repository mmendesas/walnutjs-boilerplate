var helperElement = require('walnutjs/src/support/helper/element');

var custom = function () {

    this.Given(/^\(custom\) simple test$/, function () {
        var deferred = protractor.promise.defer();
        var item = helperElement.getElementFinder('GoogleHome', 'SearchInput');
        item.getText().then(function getTextSuccess(text) {            
            console.log('Element Text: ', text);
            deferred.fulfill();
        });
        console.log("custom simple test");
        return deferred.promise;
    });

}

module.exports = custom;