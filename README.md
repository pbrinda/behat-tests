# behat-tests

Create tests using behat

## Installation
* Open terminal and execute below commands:
```sh
$ git clone https://github.com/pbrinda/behat-tests.git
$ cd behat-tests
```
* Install project dependencies using composer
```sh
$ ./composer.phar install
```

## How to Run the tests
* Open new terminal window and change current working directory to behat-tests.
```sh
$ cd behat-tests
```
* Start selenium webdriver and chrome driver.
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

