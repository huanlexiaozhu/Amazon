*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Should be able to search for product
Open Browser    https://www.amazon.com   chrome
Sleep  3
Input Text  id=twotabsearchtextbox  Ferrari 458
Sleep  3
Click Button    xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input