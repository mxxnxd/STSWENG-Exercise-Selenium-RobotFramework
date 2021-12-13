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
    set window size                     1552x840
    click                               css=*[data-test="username"]
    type                                css=*[data-test="username"]                 problem_user
    type                                css=*[data-test="password"]                 secret_sauce
    click                               css=*[data-test="login-button"]
    Page Should Contain Element         css:img.inventory_item_img[src="/static/media/sauce-backpack-1200x1500.34e7aa42.jpg"]

*** Keywords ***