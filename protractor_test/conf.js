exports.config = {
    seleniumAddress: 'http://localhost:4444/wd/hub',
    specs: ['simple_protractor.js'],
    highlightDelay: 100,
    capabilities: {
        'browserName': 'chrome'
    }
}