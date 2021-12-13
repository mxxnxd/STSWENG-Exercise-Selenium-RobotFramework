*** Settings ***
Documentation                           Typed wrong password
Library                                 Selenium2Library


*** Variables ***
${BROWSER}                              gc
${DEMO_URL}                             https://www.saucedemo.com/

*** Test Cases ***
User can open home page
    [Documentation]                     As a user who typed in a wrong password, I cannot login successfully

    open browser                        ${DEMO_URL}     ${BROWSER}
    set window size                     1552x840
    click                               css=*[data-test="username"]
    type                                css=*[data-test="username"]                 standard_user
    type                                css=*[data-test="password"]                 1234
    click                               css=*[data-test="login-button"]
    page should contain                 Epic sadface: Username and password do not match any user in this service

*** Keywords ***