*** Settings ***
Documentation  Some basic info man
Resource  ../Resources/Hagr.robot
Resource  ../Resources/PO/Common_bs.robot
Test Setup  Common_bs.Begin Web Test
Test Teardown  Common_bs.End Web Test

*** Variables ***
${BROWSER} =  chrome
${BROWSER_VERSION} =  62.0
${OS} =  Windows
${OS_VERSION} =  10
${SITE_URL} =  https://haggar.ca
${BS_USER} =  secondsession1
${ACCESS_KEY} =  zF5fpCCFyAE9cYT5vqqq
${REMOTE_URL} =  http://${BS_USER}:${ACCESS_KEY}@hub.browserstack.com/wd/hub
${BROWSER_CAPABILITIES} =  browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS},os_version:${OS_VERSION}

*** Test Cases ***
Place an Order
    [Documentation]  User needs to login to place an order
    [Tags]  Smoke

    #Hagr.Open Home Page
    Common_bs.Close Sign Up Popup