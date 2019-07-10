const logger = require('walnutjs/src/support/helpers/logger');
const { Then } = require('cucumber');

Then(/^\(custom\) user prints message '(.*)'$/, msg => {
    logger.info(`my custom msg: ${msg}`)
});
