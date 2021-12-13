*** Settings ***
Documentation                           Logged in as problem user and sees a broken inventory page
Library                                 Selenium2Library


*** Variables ***
${BROWSER}                              gc
${DEMO_URL}                             https://www.saucedemo.com/

*** Test Cases ***
User can open home page
    [Documentation]                     As a problem user, I should see a broken inventory page when logged in

    open browser                        ${DEMO_URL}     ${BROWSER}
    set window size                     1552x840
    click                               css=*[data-test="username"]
    type                                css=*[data-test="username"]                 problem_user
    type                                css=*[data-test="password"]                 secret_sauce
    click                               css=*[data-test="login-button"]
    page should contain                 css:img.inventory_item_img[src="/static/media/sl-404.168b1cce.jpg"]

*** Keywords ***