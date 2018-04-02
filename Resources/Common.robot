*** Settings ***
Documentation  Common methods to be used everywhere
Library  Selenium2Library

*** Variables ***
${SIGNUP_POPUP_CLOSE} =  xpath=//*[@id="shopify-section-footer-newsletter-mobile"]/div/div[1]/a
${ASCII_ENTERKEY} =  \\13
*** Keywords ***

Begin Web Test
    open browser  about:blank   ${BROWSER}

End Web Test
    sleep  2s
    close browser

Close Sign Up Popup
    click link  ${SIGNUP_POPUP_CLOSE}


