# walnutjs-boilerplate
 * Starter project with default structure using [walnutjs](https://github.com/mmendesas/walnutjs).
 * Use this project as a template to create your own project based on **walnutjs**


## Prerequisites

Before start, you need to install the following programs:

* [java](https://www.java.com/en/download/) - tested on 1.8.0_211
* [node](https://nodejs.org) - tested on v10.16.0
* **selenium webserver**: 
    * [webdriver-manager](https://www.npmjs.com/package/webdriver-manager) - A selenium server and browser driver manager
    * [zalenium](https://opensource.zalando.com/zalenium/) - A flexible and scalable selenium grid

## Installing

1. Use this few steps to install JAVA and set `JAVA_HOME`
    ```sh
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-java8-installer
    ```

    1. Get the JRE path `sudo update-alternatives --config java`
    2. Set in the file and update:
        - edit `/etc/environment`
        - add `JAVA_HOME="/usr/lib/jvm/java-8-oracle"`
        - run `source /etc/environment`


2. Clone this repo into your workspace
    ```sh
    git clone git@github.com:mmendesas/walnutjs-boilerplate.git
    cd walnutjs-boilerplate
    ```
3. Install the dependencies of the project
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
npm start
```
