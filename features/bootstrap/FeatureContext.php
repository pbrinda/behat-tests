<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Behat\MinkExtension\Context\MinkContext;

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class FeatureContext extends MinkContext
{
    /**
     * Initializes context.
     * Every scenario gets its own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
        // Initialize your context here
    }

    /**
     * @Then /^"([^"]*)" element should be visible$/
     */
    public function elementShouldBeVisible($arg1)
    {
        $session = $this->getSession(); 
        $page = $session->getPage();
        $element = $page->find('css', $arg1);
        if ($element->isVisible()) {
            return;
        } 
        else {
             $message = sprintf('Is NOT visible.');
             throw new Exception($message);

        }

    }

    /**
     * @When /^I click element "([^"]*)"$/
     */
    public function clickElement($cssSelector)
    {
        $session = $this->getSession(); 
        $page = $session->getPage();
        $element = $page->find('css', $cssSelector);
        if (null === $element) {
            throw new \InvalidArgumentException(sprintf('Could not find CSS Selector: "%s"', $cssSelector));
        }
        $element->click();

    }

    /**
     * @Then /^I wait for the ajax response$/
     */
    public function iWaitForTheAjaxResponse()
    {
        $this->getSession()->wait(5000, '(0 === jQuery.active)');
    }

    /**
     * @Then /^I wait (\d+) sec$/
     */
    public function wait($sec)
    {
        sleep($sec);
    }

//
// Place your definition and hook methods here:
//
//    /**
//     * @Given /^I have done something with "([^"]*)"$/
//     */
//    public function iHaveDoneSomethingWith($argument)
//    {
//        doSomethingWith($argument);
//    }
//
}
