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
    maximize browser window             set window size                     1552x840
    input username                      data-test="username"                 standard_user
    input password                      data-test="password"                 1234
    click login button                  unsuccessful login
    page should contain                 Epic sadface: Username and password do not match any user in this service

*** Keywords ***