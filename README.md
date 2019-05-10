# walnutjs-boilerplate
 * Starter project with default structure using [walnutjs](https://github.com/mmendesas/walnutjs).
 * Use this project as a template to create your own project based on **walnutjs**


### Prerequisites

Before start, you need to install the following programs:

* [java](https://www.java.com/en/download/)
* [node](https://nodejs.org)
* [webdriver-manager](https://www.npmjs.com/package/webdriver-manager)
* [protractor](http://www.protractortest.org/#/)

### Installing

Use this few steps to install JAVA and set JAVA_HOME
```sh
$ sudo add-apt-repository ppa:webupd8team/java
$ sudo apt-get update
$ sudo apt-get install oracle-java8-installer
```

1. Get the JRE path `sudo update-alternatives --config java`
2. Set in the file and update:
    - $ sudo nano /etc/environment
    - `JAVA_HOME="/usr/lib/jvm/java-8-oracle"`
    - $ source /etc/environment


Make the clone of the project 

```sh
git clone git@github.com:mmendesas/walnutjs-test.git
cd walnutjs-test
```
Install the dependencies of the project

```sh
npm install
```

## Running the tests

For execution just run these following commands

```sh
webdriver-manager update
webdriver-manager start
```
Inside the project folder:
```sh
protractor protractor.conf.js
```
