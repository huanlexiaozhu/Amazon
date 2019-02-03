*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Log     <H1>Hello World</H1>    HTML
    comment  Hello there this is comment!
    should be equal  kamal  kamal
    should be equal  KAMAL  KAMAL
    #Provided precondition
    #When action
    #Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test