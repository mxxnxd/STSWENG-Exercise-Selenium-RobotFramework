*** Settings ***
Documentation                           Unsuccessful user log in by a locked out user
Library                                 Selenium2Library


*** Variables ***
${BROWSER}                              gc
${DEMO_URL}                             https://www.saucedemo.com/

*** Test Cases ***
User can open home page
    [Documentation]                     As a locked out user, I cannot log in successfully

    open browser                        ${DEMO_URL}     ${BROWSER}
    set window size                     1552x840
    click                               css=*[data-test="username"]
    type                                css=*[data-test="username"]                 locked_out_user
    type                                css=*[data-test="password"]                 secret_sauce
    click                               css=*[data-test="login-button"]
    page should contain                 Epic sadface: Sorry, this user has been locked out.

*** Keywords ***