*** Settings ***
Library  Selenium2Library

*** Variables ***
${MENS_LANDINGPAGE} =  xpath=//*[@id="shopify-section-header"]/header/div[2]/div[1]/div[4]/nav/ul/li[1]/a
${TOPNAV_SEARCHICON} =  xpath=//*[@id="shopify-section-header"]/header/div[2]/div[1]/div[3]/div[1]/i[1]
${TOPNAV_SEARCHBAR} =  name=q
${search_text} =  Premium No Iron Khaki

*** Keywords ***
#${search_text} =  set variable  Premium No Iron Khaki

Men's Landing page
    click link  ${MENS_LANDINGPAGE}
    wait until page contains element  ${HAGR_LOGO}

Input and Search
    click element  ${TOPNAV_SEARCHICON}
    input text  ${TOPNAV_SEARCHBAR}  ${search_text}

    sleep  1s
    press key  ${TOPNAV_SEARCHBAR}  ${ASCII_ENTERKEY}
    wait until page contains  ${search_text}
    sleep  1s
    click element  xpath=//*[@id="isp_search_results_container"]/li[1]/div[2]/a/div
    sleep  1s