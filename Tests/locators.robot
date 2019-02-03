
*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  http://www.amazon.com
*** Test Cases ***
Should be able to do sth
    #[Tags]    DEBUG

    open browser    ${URL}  ${BROWSER}
    mouse over   css=#nav-al-wishlist > a:nth-child(2) > span
    #close browser
    #sleep  1s
    #open browser  ${url}    ${BROWSER}
    #click link  default=/gp/registry/wishlist/ref=nav_wishlist_create?ie=UTF8&triggerElementID=createList
    click link  xpath=//div[@id='nav-al-wishlist']//span
    #<a href="/gp/registry/wishlist/ref=nav_wishlist_create?ie=UTF8&amp;triggerElementID=createList" class="nav-link nav-item"><span class="nav-text">Create a List</span></a>

xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
//xpath=input[starts-with(@type,"submit")]
css=.nav-search-submit > input:nth-child(2)
css=input[type^="sub"]
    sleep   8s
    close browser

*** Keywords ***
Provided precondition
    Setup system under test