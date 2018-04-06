*** Settings ***
Documentation  Common methods to be used everywhere
Library  Selenium2Library
Variables  ../../Libraries/convertbase64.py

*** Variables ***
${SIGNUP_POPUP_CLOSE} =  xpath=//*[@id="shopify-section-footer-newsletter-mobile"]/div/div[1]/a
${ASCII_ENTERKEY} =  \\13
*** Keywords ***

Begin Web Test
    open browser  url=${SITE_URL}   browser=${BROWSER}   remote_url=${REMOTE_URL}   desired_capabilities=browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS},os_version:${OS_VERSION}
    input password  ${SITE_PFIELD}  ${var}
    click button  ${SITE_ENTER}
    maximize browser window

End Web Test
    sleep  2s
    close browser

Close Sign Up Popup
    click link  ${SIGNUP_POPUP_CLOSE}