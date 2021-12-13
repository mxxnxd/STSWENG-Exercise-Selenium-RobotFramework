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
    maximize browser window             set window size                     1552x840
    input username                      data-test="username"                 problem_user
    input password                      data-test="password"                 secret_sauce
    click login button                  Successfully logged in
    page should contain                 css:img.inventory_item_img[src="/static/media/sl-404.168b1cce.jpg"]

*** Keywords ***