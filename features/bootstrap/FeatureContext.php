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
     * @Then /^"([^"]*)" element contains value "([^"]*)"$/
     */
    public function elementContainsValue($path, $value)
    {
        $session = $this->getSession(); 
        $page = $session->getPage();
        $element = $page->find('css', $path);
        if ($value === $element->getHTML()) {
            return;
        } 
        else {
             $message = sprintf('The element "%s" not contain value: "%s"', $path, $value);
             throw new Exception($message);
        }
    }

    /**
     * @Then /^"([^"]*)" element with xpath contains value "([^"]*)"$/
     */
    public function elementXpathContainsValue($path, $value)
    {
        $session = $this->getSession(); 
        $page = $session->getPage();
        $element = $page->find( 'xpath', $session->getSelectorsHandler()->selectorToXpath( 'xpath', $path ) );
        if ($value === $element->getHTML()) {
            return;
        }
        else {
             $message = sprintf('The element "%s" does not contain value: "%s"', $path, $element->getHTML());
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

    /**
     * @Given /^the page title should be "([^"]*)"$/
     */
    public function thePageTitleShouldBe($expectedTitle)
    {
        $titleElement = $this->getSession()->getPage()->find('css', 'head title');
        if ($titleElement === null) {
            throw new Exception('Page title element was not found!');
        } else {
            $title = $titleElement->getHTML();
            if ($expectedTitle !== $title) {
                throw new Exception("Incorrect title! Expected:$expectedTitle | Actual:$title ");
            }
        }
    }

    /**
     * @When /^I scroll "([^"]*)" into view$/
     */
    public function iScrollIntoView($elementId) {
        $function = <<<JS
            (function(){
                var elem = document.getElementById("$elementId");
                elem.scrollIntoView(false);
            })()
JS;
        try {
          $this->getSession()->executeScript($function);
        }
        catch(Exception $e) {
          throw new \Exception("ScrollIntoView failed");
        }
    }
}