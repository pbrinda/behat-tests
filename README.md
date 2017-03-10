# behat-tests

Create tests using behat

## Installation
* Open terminal and execute below commands:
```sh
$ git clone https://github.com/pbrinda/behat-tests.git
$ cd behat-tests
```
* Install Composer by globally following [this article](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).
* Install project dependencies using composer
```sh
$ composer install
```

## How to Run the tests
* Open new terminal window and change current working directory to behat-tests.
```sh
$ cd behat-tests
```
* Open new terminal window and start selenium webdriver driver.
```sh
$ java -jar selenium-server-standalone-2.48.2.jar -Dwebdriver.chrome.driver="chromedriver"
```
* Open new terminal window and change current working directory to behat-tests.
```sh
$ cd behat-tests
```
* Execute behat to start the tests
```sh
$ ./bin/behat
```

