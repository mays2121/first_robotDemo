*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
scrolltest
    Open Browser    https://google.com        Chrome
    Maximize Browser Window
    Click Element    xpath://button[@id='W0wltc']
    Input Text    xpath://input[@name="q"]    HelloWorld
    Click Search Button
    Sleep    2
    Wait Until Element Is Visible   xpath://*[@id="main"]
    Page Should Contain    HelloWorld  

*** Keywords ***
Click Search Button
    Wait Until Element Is Visible       xpath://div[@class='lJ9FBc']//input[@name='btnK']
    Click Element    xpath://div[@class='lJ9FBc']//input[@name='btnK']