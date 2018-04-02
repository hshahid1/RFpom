*** Settings ***
Library  Selenium2Library

*** Variables ***
${ACCESS_PASS} =  owreot
${SITE_PASSWORDFIELD} =  xpath=//*[@id="login_form"]/div[2]/div/input
${SITE_ENTER} =  xpath=//*[@id="login_form"]/div[3]/input
${HAGR_LOGO} =  xpath=//*[@id="shopify-section-header"]/header/div[2]/div[1]/div[2]/a/img

*** Keywords ***
Load
    go to  ${START_URL}
    input password  ${SITE_PASSWORDFIELD}  ${ACCESS_PASS}
    click button  ${SITE_ENTER}
    maximize browser window

Verify Page Loaded
    wait until page contains element  ${HAGR_LOGO}
