*** Settings ***
Documentation                           Successful user log in
Library                                 Selenium2Library


*** Variables ***
${BROWSER}                              gc
${DEMO_URL}                             https://www.saucedemo.com/

*** Test Cases ***
User can open home page
    [Documentation]                     As a user I can open the home page and log in

    open browser                        ${DEMO_URL}     ${BROWSER}
    maximize browser window             set window size                     1552x840
    input username                      data-test="username"                 standard_user
    input password                      data-test="password"                 secret_sauce
    click login button                  successfully logs in

*** Keywords ***